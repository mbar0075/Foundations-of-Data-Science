dataInitial<-read.csv('C:\Users\User\Documents\RProjects\data-rental.csv')
#Importing libraries
library(ggplot2)
library(tidyverse)

library(maps)
library(leaflet)
library(leaflet.extras)

#mapdata<-map_data("world", regions="netherlands")#Getting the Netherlands map and storing in mapdata

#getting the world.cities database and storing it in and filtering the the database to store only the information which has Netherlands as a city
v<-data(world.cities)
rows<-c(which(world.cities$country.etc=="Netherlands"))
vec<-fortify(world.cities[rows,])

Averages <- vector()
Cities <- vector()
map<-vector()

for (i in unique(dataInitial$city)){#looping through the unique cities
  
  tmp <- which(dataInitial$city==i)#Storing the rows which have the same city
  Cities <- c(Cities,i)
  
  Hprice <- c(dataInitial[tmp,1])
  
  Averages <- c(Averages,round(mean(Hprice)))
  
}
map<-cbind.data.frame(Cities,Averages)
names(map)<-c("name","Averages")

vec<-cbind(vec,"Averages"=NA)#creating new column in vec called Averages

for (i in 1:NROW(vec)){#Placing all the required values found in map vector in vec vector
  for(j in 1:NROW(map)){
    if(map[j,1]==vec[i,1]){
      vec[i,7]<-map[j,2]
    }
  }
}

vec <- na.omit(vec)#This is used to remove any city data which as not relevant to the original dataset

map2<-leaflet(vec) %>%#These are the commands used to display the heat map with the required markers
  addTiles(group="city") %>%
  setView(vec,lng = 4.895168, lat = 52.370216, zoom = 8)%>%
  #The heat map intensity is based on the average price per square meter, used the coordinates from the world.cities database
  addHeatmap(group=dataInitial$house_price, lng=~vec$long, lat=~vec$lat,intensity=~vec$Averages, max=2500, blur = 35)%>%
  
  addMarkers(lng=vec$long,lat=vec$lat,label=paste(vec$name,vec$Averages),#This adds the markers
             options = popupOptions(closeButton = TRUE),group="Name/Prices")%>%
  
  addLayersControl(
    overlayGroups= c("Name/Prices"),
    options = layersControlOptions(collapsed = TRUE))

map2

saveWidget(map2, "temp.html", selfcontained = FALSE)
webshot("temp.html", file = "Heatmap.png",
        cliprect = "viewport")
