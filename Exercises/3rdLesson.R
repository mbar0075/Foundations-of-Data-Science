
#Exercise 2
#Q1
patient<-c("Glucose","Blood Pressure","Skin Thickness","Insulin","BMI","Diabetes Function","Age","Pregnancies")

typeof(patient)

dvalues<-c(6,148,72,35,95,33.6,0.627,50)

typeof(dvalues)

record<-c(patient,dvalues)

#Q2
#Vector of average high temperatures in Celsius for July
temp<-c(28,36,34,27,25,31)

city<-c("London","Malta","Madrid","Paris","Prague","Rome")

#Using names function to set the names of the values
names(temp)<-city

#Accessing names of first 2 cities , important use the vector containing the values , not the one with the names
temp[0:2]

temp["Paris"]
temp["Malta"]


#Exercise 3
#QI
num1<-c(1,rep(2,2),rep(3,3),rep(4,4),rep(5,5))
num2<-cumsum(1:20.5)
num3<-seq(1,49,by=2)
#Q2
x <-c(22, 3, 7, NA, NA, 67)
x[is.na(x)] <- 12
#Q3
a<-c(32, 21, 13, NA, 8, 9)
mean(a, na.rm = T)#T marking for True
#Q4
patients <-c( 'Joseph' =23, 'John' =NA, 'Martin' =24 ,'Joanne' =NA)
patients[is.na(patients)] <-c(34,35)
#Q5
height<-c(1.7,1.6,1.68,1.94)
weight<-c(78,55,62,102)
bmi<-weight/(height^2)


lbmi<-bmi[bmi>25]




#Lesson4
#Creating a vector with a specific set of values
#50 values which are all 3
d<-rep(3,50)
length(d)
s<-rep('a',4)
v<-rep(c(1,10),5)

m<-rep(1:5, length.out=10)
length(m)

#Accessing elements in a vector
w<-c(1,2,3,4,5,6,7)
#Important to note index 1 gives first element
w[1]
#Give me all the elements in w except 1 - implies as not
w[-1]
w[-3]
#To select the first 3 elements
w[1:3]
#Gives values except in the range
w[-3:-5]

#More vector operations
sum(w)#Produces sum
prod(w)#produces product

min(w)#gives minimum value
max(w)#gives maximum value


#Adding vector with different elements
v1<-c(1,2,3,4,5)
v3<-c(1,2,3,4,5,6,7,8,9,10)
v4<-c(2,4,6,8)

v1+v3#since v3 has double the elements of v1 , it will continue to add
v3+v4#generates result but a warning is also generated , the error is that the longer vector is not a multiple of the shorter one

#Introducing distribution
x<- seq(-10,10,by -0.1)
help(dnorm)
y<-dnorm(x,mean=0)
#for sin wave:
z<-sin(x)

#Plotting distribution
plot(x,z,type="p")
plot(x,y,type="p")
plot(x,y,type="l")

#loops
a<-2:6
b<-c(10,20,30,40,50)
for(i in 1:5)
{
  d<-a[i]*b[i]
  print(d)
}

#if statement , can also do if else if ladder
x<-rnorm(1)
x

if(x>1){
  answer<-"Greater than 1"
}else{
  answer<-"Less than or equal to one"
}
print(answer)


#Naming vectors
age<-c(23,26,24,26)
names(age)<-c("George","John","Paul","Ringo")
age

names(age)<-NULL #Removing the names attribute

#Another way to assign names
beatles("George"=23,"John"=26)
names(beatles)#Accessing only the name
attributes(beatles)#Returns the attributes(properties) associated with the vector
help(attributes)

beatles["George"]#Extract values based from index , gives value associated with George
beatles[c("John","George")]
beatles[beatles<26]#Gets ages less than 26

#Missing values Na 
x<-c(22,3,7,NA,NA,67)
is.na(x)#False-> not an Na while TRUE implies that it is an NA
is.na(x)<-c(3,6)#Sets elements 3 and 6 as NA values

length(x)#Length of vector is still 6
x[!is.na(x)]#Checks which of the elements in the vector are not NA
x



