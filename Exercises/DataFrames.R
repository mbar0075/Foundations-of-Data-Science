#Importing titanic data set
data<-read.csv('C:/Users/User/Documents/RProjects/Titanic exercises/train.csv')
#Exploring the data
data
#Use the following 
dim(data)#Gives dimensions
str(data)#Gives structures
names(data)#Gives names
mean(data$Fare)#Gives mean of a single column
median(data$Fare)#Gives median of a single column
typeof(data$Fare)#Gives type of a column
data[1][1]#Gives passenger ID
data[[1]][1]#Gives Passenger ID 1
factor(data)
fac <- factor(data$Survived)
fac
nrow(data)# returns the number of rows
ncol(data)# returns the number of columns
colnames(data)# returns the column names
rownames(data)#returns the row names

#Question 2
fac <- factor(data$Survived)
fac
#Can also change Sex into factor
fac <- factor(data$Sex)
fac

#Question 3
Title<-regexec(",(\\s+\\w+)+\\.",data$Name)
title <- unlist(strsplit(unlist(regmatches(data$Name,Title))," "))
title

#Question 4
namelength<-nchar(data$Name)
namelength
#Plotting
plot(namelength,data$Fare)
