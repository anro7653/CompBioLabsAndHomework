#Andrew Roup
#Lab 7
#3/5/2019
#EBIO 4420

#Start by setting working directory into the Lab 7 folder
setwd("~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab07")
getwd()

#Lab problem #1: Triangle Area Quesiton
#Set up a function that evaluates the area of a triabgle when given the base and height

#First, set up the function to allow an input of base and height
triangleArea <- function( b , h ){
  return( 0.5 * b * h ) #Return the result of the area
}

#To test, make the base 10 and height 9 and store these into variables
b <- 10
h <- 9

#Run the function over the base and height variables we assigned before
triangleArea( b , h )




#Lab problem #2: Absolute Value function
#What we want to accomplish is crearing a function that returns the absolute value of a
#individual number or vector input

#Start by creating the function and having it so that it recieves an input of x
myAbs <- function( x ){
  
  #In order to create a function that can take a vector, we must
  #create a for loop that will run iterations over the length
  #of the input so that each value within a vector will be acted upon
  for ( i in 1:length(x)) {  
                            
    
    #Set up a if statement thats checks to see if a value in the vector is negative                        
    if( x[i] < 0 ){         
      x[i] <- (-1) * x[i] #If it is negative, multiple it by -1 to make it positive
    }
    
    #Set up an if statement that evaluates if a value in the vector is positive
    if( x[i] >= 0 ){
      x[i] <- x[i] #If it is positive, leave the number the same
    }
  }
  #Return the newly modified vector
  return(x)
}

#Below are a series of checks to test that the function worked
x <- 5
myAbs(x)

x <- -2.3
myAbs(x)

x <- c( 1.1, 2, 0, -4.3, 9, -12)
myAbs(x)



#Lab problem #3: Fibonnaci Function
#Create a function that receives two inputs ( The starting value and # of iterations)
#and then return a sequence of the fibonnaci function that matches those inputs
fibonnaciFunction <- function( x , n ){
  
  fib_vector <- rep( 0 , n ) #Pre-allocate a vector to the length of n input
  
  fib_vector[2] <- 1 #The second value of the fibonnaci sequence will be 1, regardless of
                     #starting value                
    
  fib_vector[1] <- x #Puts starting value where it belongs, based on input
    
    #Bonus 3a:
    #The if statements below check whether or not an input of n == 1 or 2
    #If the if statement confirms that this has been inputted, then the fib_vector
    #is returned as the appropriate size and numbers that are present in the fibonnaci sequence
    if( n == 1 & x == 1 ){
      fib_vector <- x 
    }
  
    if( n == 1 & x == 0 ){
      fib_vector <- x 
    }
  
    if( n == 2 & x == 0 ){ 
      fib_vector <- c( x , 1 )
    }
  
    if( n == 2 & x == 1 ){
      fib_vector <- c( x , 1 )
    }
    
    #The following is an if statement that checks whether the 'n' that was inputted is
    #greater than or equal to 3. If this check is confirmed, then the function will execute
    #the fibonnaci formula over the fib_vector to the extent of the inputs received
    if( n >= 3 ){
      for (i in seq( 3 , n )){
        fib_vector[i] <- fib_vector[ i - 2 ] + fib_vector[ i - 1 ]
    }
    }
  return(fib_vector) #Return the fib_vector based off which if statement was executed
}

#Establish the 'x' and 'n' variables to use for testing the function
x <- 0
n <- 5

#Test the function with the given variables above
fibonnaciFunction( x , n )



#Lab Problem #4:

#4a:  
#Write a function that takes two numbers as its arguments and returns
#the square of the difference between them. 

squareDiffFunction <- function( x , y ){
  return( ( x - y ) ^ 2 ) #Return the result of the squared difference between the variables 
}

#Test the function by saving two inputs, one as a vector and the other as a number
x <- c( 2 , 4 , 6 )
y <- 4

#Perform the function on the variables saved above and check that it works
squareDiffFunction( x , y )


#4b: 
#Write a function of your own that calculates the average of a vector of numbers.
averageFunction <- function( v ){
  
  #To get the average, I need to sum the vector then divide it by the length of the vector
  return( sum( v ) / length( v ) ) 
  
}

#Create a variable to test the function
v <- c( 5 , 15 , 10 )

#Check if the function is working
averageFunction( v )

#Read in DataforLab7.csv to test the functionality of the averages function and convert to 
#a vector
lab_7_data <- read.csv("DataForLab07.csv")

vectorLab7Data <- as.vector(t(lab_7_data))

#Now evaluate the data in the function
averageFunction(vectorLab7Data) 



#4c:
#Create a function that calculates the sum of squares of the given data set
sumOfSquares <- function( x ){
  
  #Use the mean calculator function to find the mean of the data being input, then store
  #it as a variable 
  meanVector <- averageFunction(x)
  
  #Next return the sum of the result of the square difference vector 
  return(sum(squareDiffFunction( x , meanVector)))
}

#Check the sum of squares function with the lab 7 data
sumOfSquares(vectorLab7Data)





