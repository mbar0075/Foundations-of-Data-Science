#Functions

#A function is like a method in java , you can have a function with no parameters or one with parameteres(Arguments)


round(4.5673,digits =2)

help(round)
mean(1:10)
median(c(2.3,4.5,6.5,7.4,8.7))
sqrt(9)

#I function encapsulated within another function
res<-round(mena(1:10),3)
print(res)

v1<-c(1,3,4,6,7,8)
total<-sum(v1)
size<-length(v1)

#we can use the args function to check which arguments the function have
args(round)

#These 2 functions are equivalent:
round(2.4765,digits=3)
round(2.4765,3)

#Building a user defined function
bag<-c("Blue","Orange","Red")
print(bag)

#Creating a function to pick an element from the bad , take note of its color and replace it back in the bag
args(sample)
help(sample)

pick <- sample(bag, size=3,replace=T)#picks, stores elements that were chosen
print(pick)

#where size is the number of elements to choose
#replace , if true it means that an element can be chosen more than once


#draw() to ensure that pick reruns sample(), every time function is called

draw<-function(){
  bag<-c("Blue","Orange","Red","Green","Yellow")
  pick <- sample(bag, size=3,replace=TRUE)
  print(pick)
}


#Calling function
draw()


#Function with arguments
flip<-function(s){#argument s is size
  coin<-c("heads","tails")
  throw<- sample(coin,size=s,replace=TRUE)#, prob=c(.30, .70)
  print(thorw)
  typeof(throw)
}

#Calling function
flip(20)



#Importing Data
#Importing data from a CSV or a TXT file using read.table()


diabetes<-read.table('C:/Users/User/Documents/RProjects/diabetes.csv',
                    sep=",",#Filed separator
                    header=TRUE,#does file contain the names of the variable in itsfirst line
                    stringAsFactors=FALSE)

help(read.table)
typeof(diabetes)


#To view table
view(diabetes)

summary(diabetes)#summarizes information into columns

#Sorting the data according to Blood Pressure
sort(diabetes$BloodPressure)

#Plot a histogram
hist(diabetes$BloodPressure)
hist(diabetes$DiabetesPedigreeFunction, ylim=c(0,300))

head(diabetes)#returns first part of a data.frame , limited to a number of rows
names(diabetes)#displays the variable headings

#A density plot
plot(density(diabetes$BloodPressure))

#Functions Exercises 4
#Q1
#Function
input<-100
temp_conversion<-function(input){
  celsius<-((input-32)*0.5556)
  print(celsius)
}
#Executing function
temp_conversion(input)

#Another way of Function execution
temp_conversion(as.integer(readline()))


#Q2
name<-"Matthias"
surname<-"Bartolo"
greet<-function(name,surname){
  print(c("Greetings ",name,surname))
}
#Executing function
greet(name,surname)

#Another way of Function execution
greet(readline(),readline())

#Q3
#a)
diabetes<-read.csv('C:/Users/User/Documents/RProjects/diabetes.csv')
summary(diabetes)

#b)
sort(diabetes$BloodPressure)


#c)
hist(diabetes$BloodPressure)
hist(diabetes$DiabetesPedigreeFunction)

