#Matrices

a<-seq(10,120,by=10)

a
dim(a)<-c(3,4)#impose this 3 by 4 over this data
a
#In a matrix the datatypes in each and every cell are the same

#creating a matrix with the matrix function
help(matrix)
mtrx<- matrix(1:12,nrow=3)#R automatically assumes  number of columns is 4
mtrx

#matrix funcion automatically organises by coumn
mtrx<-matrix(1:12,nrow=3,byrow=TRUE)
mtrx


usa<-c(1.3,1.5,1.2,1.4,1.5)
de<-c(0.2,0.4,0.7,0.8,0.8)
ngo<-cbind(usa,de)#combines the 2 vectors into matrix by column
ngo

ngro<-rbind(usa,de)#combines the 2 vectors into matrix by row
ngo

#Assigning names to the ngo matrix
rowname(ngo)<-c("2013","2014","2015","2016","2017")

#Transpose a matrix
ngro<-t(ngo)#Changing the columns into rows
ngo











#Exercises

#Q1
mtrx1<-matrix(1:1000, nrow=25)
mtrx1

#Q2
x<-c(1:10)
mtrx2<-cbind(x,2*x,3*x,4*x,5*x)
mtrx2

sum<-sum(mtrx2[7,])#works out the sum of row seven
sum

#Transposing matrix
mtrx2<-t(mtrx2)
mtrx2

#Q3
A<-matrix(1:12, nrow=4)
B<-matrix(1:15, nrow=3)
A
B

#Multiplying A and B
c<- A %*% B
c

#Value of the 3rd row and second column
c[3,2]

#Multiplying row 3 in A by row 2 in B
ans<-c(A[3,]*B[,2])life<-read.table(file='RProjects/Life_expectancy_in_UK.tsv', sep = '\t', header = TRUE)
life

ans

#Q4

#Reading from a tsv file
life<-read.table(file='RProjects/Life_expectancy_in_UK.tsv', sep = '\t', header = TRUE)
life

#Removing unwanted Strings
life[life ==".."]<-NA_character_
life

#Changing names
names(life)<-c("Old_code", "Area_code", "Area_name", "Male_average","Men_life_expectancy", "Men_change_in_life_expectancy","Female_average", "Female_life_expectancy", "Female_change_in_life_expectancy","Comparison")
life
#to save it in a table
write.table(life,file="life2.tsv",quote=FALSE,sep='\t',col.names=TRUE)

#Calculating Mean
#Calculating mean of men
m<-mean(life[,6],na.rm=TRUE)#na.rm to not count NA values
m
#Calculating mean of women
w<-mean(life[,9],na.rm=TRUE)
w

#Calculating standard deviation
#men
stdev1<-sd(life[,6],na.rm=TRUE)
stdev1
#women
stdev2<-sd(life[,9],na.rm=TRUE)
stdev2

#Scatter plot
#men life expectancy as 5 and women life expectancy as 8
plot(life[,5],life[,8],main="Men life Expectency against women life expectancy")

#Accessing rows 3 to 8 and only certain columns
x<-life[3:8,c(3,5,8)]
x
