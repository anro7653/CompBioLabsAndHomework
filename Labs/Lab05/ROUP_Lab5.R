#Andrew Roup
#Lab 5
#2/15/2019
#EBIO 4420


#PART ONE
#--------
#First, set working directory into the lab 5 folder to start
setwd("~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab05")
getwd()

#Lab step #1:
#Create a variable named x and assign a numeric value of your choosing to it.
#On the next line of code, write an if-else statement that checks if the
#value is larger than 5.
x <- 3

if ( x > 5 ){
  print("Larger than 5")
} else {
  print("Smaller than 5")
}

#Lab step #2a:
#Read in Vector1.csv data
vector_data <- read.csv("Vector1.csv")

#Convert from a data.frame to a vector
vector1 <- as.vector(t(vector_data))

#Next, Using a for() loop, write code that checks each value in the imported data and replaces 
#every negative value with NA.
for ( i in 1:length(vector1)){
    if ( vector1[i] < 0 ){
      vector1[i] <- NA 
    }
}

#Lab step #2b:
#Using vectorized code (no loop) that makes use of "logical" indexing, 
#replace all those NA values with NaN.
vector1[is.na(vector1)] <- NaN

#Verify that the changes were made
print(vector1)


#Lab step #2c:
#Using a which() statement and integer indexing (again, no loop), 
#change all those NaN values with a zero.
vector1[which(is.nan(vector1))] <- 0

#Verify that the changes were made
print(vector1)


#Lab step #2d:
#Use code to determine how many of the values from the imported data fall in the range 
#between 50 and 100 (inclusive of those endpoints).
fifty_to_hundred <- sum(vector1 >= 50 & vector1 <= 100)


#Lab step #2e:
#create a new vector of data that has all the values from the imported data that 
#fall in the range between 50 and 100

#Using a similar system to sum the amount of values within vector1, this time store all 
#the values that fall within this range into a new vector
FiftyToOneHundred <- vector1[vector1 >= 50 & vector1 <= 100]

#Verify that the previous vector has the correct values from the data
print(FiftyToOneHundred)


#Lab step #2f:
#Use write.csv() to save your vector to a file named "FiftyToOneHundred.csv".
#Make sure to do the correct path to the folder you ar ewanting to save it to
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")


#Lab step #3:
#Import the data on CO2 emissions from last week's lab ("CO2_data_cut_paste.csv" from Lab04). 
#Use read.csv and place to accurate pathing to the file in order to import it
Co2_data <- read.csv("CO2_data_cut_paste.csv")


#Lab step #3a:
#Using a combination of which(), logical operators, or indexing, find the 
#first year for which data on "Gas" emissions were non-zero
print(Co2_data)

#Combination of a which statement, logical operator, and indexing, first it picks values of gas
#that are greater than zero, than it chooses the first value of the which statement
first <- which(Co2_data$Gas > 0)[1]

print(first) #Verify results


#Lab step #3b:
#Determine which years had a "Total" emissions between 200 and 300 million
#metric tons of carbon.

#Using a which() statement and logical operators, pull out the relevant data asked for
between_totals <- which( Co2_data$Total >= 200 & Co2_data$Total <= 300)

print(between_totals) #verify the results

#The data pulled out in the previous lines only gave the index values of where
#the totals were between 200 and 300. So, now look into the Co2 data in regards to
#the years and only look at the index values we were given so that we can pull
#out the years that the totals were between 200 and 300,
years_between <- Co2_data$Year[between_totals]

print(years_between) #Verify the results


#PART 2
#------

#To analyze the Lotka-Volterra model, we must first set up variables for each 
#part of the equation
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators

#Next, set up a time vector, and two other vectors to record values for the prey and
#predators over time
time <- seq( 1 , totalGenerations ) #Time vector

n    <- rep( 0 , totalGenerations ) #Prey vector
n[1] <- initPrey #Replace first value with initial prey abundance

p    <- rep( 0 , totalGenerations ) #Pred vector
p[1] <- initPred #Replace first value with initial pred abundance

#Then, set up a a for loop to analyze the values for the pred and prey values
#over the Lotka-Volterra model and put in an if conditional that replaces negative values
#with zeros
for( t in seq( 2 , totalGenerations)){
    n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
    p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
    
    if ( n[t] < 0 | is.nan(n[t])){
      n[t] <- 0
    }
    
    if ( p[t] < 0 | is.nan(p[t])){
      p[t] <- 0
    }
}

#Then, create an empty plot to the correct y and x limits to fit the data
#we collected above
plot( x=NULL , y=NULL,
      xlim = c( 0 , totalGenerations ),
      ylim = c( 0 , max(n)),
      xlab = "# of Generations",
      ylab = "Abundance",
      main = "Predator and Prey abundances over time")

#Add the lines of the data to the plot
lines(time, n , col = "Dark Green") #Prey data
lines(time, p , col = "Blue") #Pred data

#Create a matrix of the data for time steps, prey abundance, and predator abundance
myResults <- cbind( time , n , p )

#Name the columns of the matrix
colnames(myResults) <- c( "TimeStep" , "PreyAbundance" , "PredatorAbundance" )

print(myResults) #Verify the matrix was made correctly

#Finally, save the matrix into the lab 5 folder
write.csv(x = myResults, file = "PredPreyResults.csv")


