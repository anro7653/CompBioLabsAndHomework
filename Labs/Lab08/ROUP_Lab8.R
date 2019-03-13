#Andrew Roup
#Lab 8
#3/8/2019
#EBIO 4420


#Lab task #3:
#Using code previously written in lab 4, make a function that takes 4 inputs and then
#outputs the population abundances over time. Then plot this relationship.
populationAbundance <- function( K , r , n , n1 ){
  
  #preallocate a vector for the abundances, 0 to n
  new_n <- rep( 0 , n ) 
  
  #Make the first value your starting abundance
  new_n[1] <- n1
  
  #Create a time vector from 0 to n
  time <- rep( 0 , n)
  
  #Use a for-loop to fill the time vector from 1 to n sequentially
  for ( i in 1:n) {
    time[i] = i
  }
  
  #Next, create a for-loop that determines abundances over each year using a discrete
  #time growth equation starting from 2 to n
  for ( i in seq( 2 , n )) {
    new_n[i] <- new_n[ i - 1 ] + ( r * new_n[ i - 1 ] * ( K - new_n[ i - 1 ]) / K )
  }
  
  #Plot the abundance vs. time
  plot( time , 
        new_n,
        xlab = "Time (Years)",
        ylab = "Abundance")  
  
  #Return the plot and the abundance vector
  return(new_n)
  
}

#3d.
#Assign 4 values to variables for inputs
n  <- 10
K  <- 8000
r  <- 0.6
n1 <- 2000

time <- rep( 0 , n )

for( i in 1:n){
  time[i] = i
}

#Evaluate the function with the assigned inputs
newAbundanceData <- populationAbundance( K , r , n , n1)
print(newAbundancesData)

#3f.
#Next, write the new data as a data set and save it the Lab 8 folder
time_abundance_data <- cbind( time , newAbundanceData )

#Change the columns names 
colnames(time_abundance_data) <- c( "Generations" , "Abundance")

#Finally, write the data as a csv file
write.csv( time_abundance_data , file = "~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab08/Lab08_PopulationAbundanceData")
