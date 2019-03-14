# EBIO 4420 - Lab 8 

## Goal
* Learn how to make a markdown file
* Practice working with functions
* Create a function that determines population abundance over time

## Code

This code takes 4 inputs: Number of Generations (n), Starting Abundance (n1), Intrinsic growth rate of the population (r), and the environmental carrying capacity for the population (K). This code then creates a function, using those 4 inputs, to elaborate these values in a discrete-time logistic growth equation. 

## In Action

To demonstrate the code I will assign values to each of the inputs in order to test it, then I will use the function upon these inputs.

These values will be:

* K  = 8000
* r  = 0.6
* n  = 10
* n1 = 2000
```{r}
populationAbundance <- function( K , r , n , n1 ){
  new_n <- rep( 0 , n )
  new_n[1] <- n1
  
  time <- rep( 0 , n)
  
  for ( i in 1:n) {
    time[i] = i
  }
  
  for ( i in seq( 2 , n )) {
    new_n[i] <- new_n[ i - 1 ] + ( r * new_n[ i - 1 ] * ( K - new_n[ i - 1 ]) / K )
  }
  
  plot( time , 
        new_n,
        xlab = "Time (Years)",
        ylab = "Abundance")  
  
  
  return(new_n)
  
}


n  <- 10
K  <- 8000
r  <- 0.6
n1 <- 2000

newAbundanceData <- populationAbundance( K , r , n , n1)

time <- rep( 0 , n )

for( i in 1:n){
  time[i] = i
}

time_abundance_data <- cbind( time , newAbundanceData )

colnames(time_abundance_data) <- c( "Generations" , "Abundance")

write.csv( time_abundance_data , file = "~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab08/Lab08_PopulationAbundanceData")
```


## Explanation of Code

This code takes the 4 inputs described above and uses those inputs to be evaluated in a function that uses a growth equation of the population. The input for (n) is used to pre-allocate a vector of zeros for the data to be placed in. Next, (n1) is used to place the initial abundance as the first value in the pre-allocated vector.The (n) input is also used to create a time vector of the same size. Following these preparations, the time vector then goes through a for loop to place 1 through (n) in order to create the x-axis of the plot. After that, the values of (K), (r), and the pre-allocated vector with an initial value of (n1) go through a for-loop over a length of (n) iterations to fill the pre-allocated vector. Finally, the function made within the code outputs a plot that is Population abundances vs. Time (Years). After doing so, the code then writes the new abundances into a new data set.

## Conclusion

In conclusion, the function worked properly and serves to help others determine population predictions over time if certain constraints in the experiment are determined.The function and code also helps to aid in saving the data gathered to a separate file in order to be used later or referenced to at another point in time.
