library(ggplot2)

data<-read.table("C:/Users/User/Documents/RProjects/Exercises/landdata-states.csv" , sep = ",", header = T,na.strings = c("","NA"), stringsAsFactors = T)
#Q1
typeof(data)
typeof(data$State)
typeof(data$region)
typeof(data$Date)
typeof(data$Home.Value)
typeof(data$Structure.Cost)
typeof(data$Land.Value)
typeof(data$Land.Share..Pct.)
typeof(data$Home.Price.Index)
typeof(data$Land.Price.Index)
typeof(data$Year)
typeof(data$Qrtr)

#Q2
houses<-data[data$Date==2013.25,]

#Q3
ggplot(data=houses, aes(x = Home.Value, y = Land.Value))+
  geom_point(color="blue")  +labs(x="Home Value",y="Land Value")+
  ggtitle("Homevalue x Landvalue")


#Q4
house_value_plot<-ggplot(data=houses, aes(x = Home.Value, y = Land.Value))+
  geom_point(color="blue")  +labs(x="Home Value",y="Land Value")+
  ggtitle("Homevalue x Landvalue")

#Q5
house_value_plot+geom_line()

#Q6
#No it doesn't makes sense since no useful information is extracted
#Yes to an extent since they give order to the lines based on how they are connected to each other
#The lines represent the entries of land values as home values increases

#Q7
house_value_plot+geom_smooth()
#This gives a more trend accurate curve which represents the data better

#Q8
house_value_plot+geom_smooth()+geom_text(aes(label=houses$State,color="red"))

#Q9
house_value_plot+geom_smooth()+geom_point(color="red",size=2)

#Q10
house_value_plot+geom_point(aes(Structure.Cost),color="red")

