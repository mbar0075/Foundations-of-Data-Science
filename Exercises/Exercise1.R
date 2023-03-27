#Exercise1
#a
x<-10:20
#b
y<-x+2
#c
z<-y*3
#d
answer<-(z-6)/3
#e
print(c("The answer is ",answer))





#1. Vectors are a sequence of data elements that are of the same type 
  
  a<-1:10 #Create a vector of numbers
  a
  is.vector(a) #checks whether an object is a vector and returns TRUE OR FALSE
  
#Here's another vector of characters
  bob<-"Robert Borg"
  
  bob
  is.vector(bob)
  
  #Types of vectors:
  #1integers
  #2numeric
  #3character
  #4logical
  #5complex
  #6raw
  
  #Creating an integer vector
  #in the first b , b is created as type double precision real numbers
  b<-c(1,2,3,4,5,6,7,8,9,10)#c for concatenation
  b
  typeof(b)

  b<-c(1L,2L,3L,4L,5L)  
  typeof(b)#Vector b is now a vector of integers
  
  #Important:R rewrites objects without asking for permission or without any warning.Ideally do not use the sames for different objects so to avoid overwriting.
  
  ls() #list of visible objects in your environment
  
  c<-c(2.5,1.3,2.4)##c is a vector of double  
  c
  typeof(c)
  
  ##Basic vector arithmetic
  k<-c*2 #multiplication
  k
  
  s<-c+3#addition
  s
  
  r<-c-1#subtraction
  r
  
  vd<-r/s#division
  vd

  #Character vectors
  char<-c("R","is","great!")
  char
  typeof(char)
  
  char2<-c("A picture"," is worth a","1000"," words")
  #1000 considered as a character vector because of the quotes
  char2
  #char2 is still a vector with 4 Strings
  
  ##accessing elements in vector(Index starts at 1)
  char2
  char2[2]
  char2[3]
  char2[1]
  
  #Elements of character vectors are called Strings
  #Because of a String , characters were transformed into a String
  #This process is known as cohesion
  char3<-c("This is a String",1400,1000,345)
  char3
  typeof(char3)
  
  #Logical vectors store Boolean data , i.e TRUE or False 
  spock<-c(TRUE,FALSE,F,T,F,FALSE)
  #can use T for TRUE and F for False , however not recommended
  spock
  typeof(spock)#type is logical

  
  kirk<-c(FALSE,TRUE,FALSE,1,2)#false=0,true=1
  kirk
  typeof(kirk)#type of kirk is double
  
  print(kirk)
  typeof(kirk)#In this case elements are transformed to double

  
  #Some Rules
  #Every numeric value equal to 0/0L converted to logical results to FALSE
  #Every numeric value not equal to 0/0L converted to logical results in TRUE
  #Every TRUE converted to 1 or 1L
  #Every FALSE converted to 0 or0L
  
  #Relational operators:
  p<-5
  q<-16
  
  p<q#Less than
  p>q#Greater than
  p<=5#Less than or equal to
  q>=20#Greater than or equal to
  q==16#Equal to
  p!=5#Not equal to
  
  #Logical operators are used to carry out Boolean like AND,OR etc
  v<-c(TRUE,FALSE,0,0.6)
  
  w<-c(FALSE,TRUE,FALSE,TRUE)
  
  !v#Logical Not

  #Logical AND
  v
  typeof(v)#double
  w
  typeof(w)#logical
  l<-v & w #checks only 1 side
  l
  
  f<-v && w #AND both v and w need to be true for result to be true
  f#returns result of only the first comparison
  
  
  
  v | w #Logical OR

  v || w


  

  
  