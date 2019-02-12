#Andrew Roup
#Lab 4
#2/8/2019
#EBIO 4420



#PART ONE
#--------

#Lab step #1:
#Write a "for loop" that prints the word "hi" to the console 10 times
for( i in seq( 1 , 10 )){
  print("hi")
}

#Lab step #2:
#Write a for loop that prints (to the console) his total amount of money each week for
#the next 8 weeks.

#First, I assign variables to the staring money, $5 per week he gets, and the price
#of the gum
piggy_bank <- 10
allowance  <- 5
gum_pack   <- 1.34

#Next, create a for loop to iterate of the next 8 weeks and print the final weekly values
#that will be in the piggy bank
for( i in seq( 1 , 8 )){
  total <- piggy_bank + allowance - ( 2 * gum_pack )
  piggy_bank <- total
  print(piggy_bank)
}


#Lab step #3:
#Write a for loop that calculates it and prints each year's size to the console.

#First, assign variables to the values of growth rate and population size
population_size <- 2000
growth_rate     <- 0.95

#Next, create the for loop to iterate of the population size over the next 7 years
for( i in seq( 1 , 7 )){
  new_pop_size <- population_size * growth_rate
  population_size <- new_pop_size
  print(population_size)
}


#Lab step #4:
#Write a for loop that answers this question and that also prints out the abundance 
#of the population each time step.

#First, assign variables to the values for K, n[1], and r
n  <- 2500
K  <- 10000
r  <- 0.8

#Next, create a for loop to iterate over the abundance of the population each year
for( t in seq( 1 , 11)){
  abundances = n + ( r * n * (K - n)/K )
  n <- abundances
  print(abundances)
}


#PART TWO
#--------

#Lab step #5
#part a.)
#Make a vector using the function rep() that has 18 zeros
zeros_vector <- rep( 0 , 18)

#Print vector to verify the vector was created
print(zeros_vector)


#part b.)
#Create a for loop to replace the zeros with 3 multiplied by the index position of the zero
for( i in seq( 1 , 18 )){
  zeros_vector[i] <- 3 * i
}

#Print the zeros vector again to verufy that the values changed to the desired outcome
print(zeros_vector)


#part c.)
#Create a new zeros vector, then make the first value to be 1
new_zeros    <- rep( 0 , 18 )
new_zeros[1] <- 1

#Verify new vector is all zeros
print(new_zeros)


#part d.)
#Create a for loop over the vector made in part c.), that is 1 plus 2 times the previous 
#entry
for( i in seq( 2 , 18 )){
  new_zeros[i] <- 1 + ( 2 * ( new_zeros[i - 1]))
}
#Verify that the vector has changed appropriately from the for loop
print(new_zeros)


#Lab step #6:
#Create a for loop that generates the first 20 values of the Fibonnaci Sequence

#First, pre-allocate a vector to store the values in, then make the second value of the 
#vector to be 1
fib_vector    <- rep( 0 , 20 )
fib_vector[2] <- 1

#Next, create a for loop that adds the previous two entrys together and stores it
for (i in seq( 3 , 20 )){
  fib_vector[i] <- fib_vector[ i - 2 ] + fib_vector[ i - 1 ]
} 
#Print the new fib_vector to verify that the for loop changed the vector appropriately
print(fib_vector)  


#Lab step #7:
#Redo step #4, but save the values this time around in a vector called abundance, and
#store a vector of values called time from 1 to 12

#This is my step #4, modified to store the values into a vector for abundances
K  <- 10000
r  <- 0.8

#Pre allocate a vector for the abundance per year named n, make the first value 2500
new_n <- rep( 0 , 12 )
new_n[1] <- 2500

#Next, create a for loop to iterate over the vector n 
#to find the abundance of the population each year
for( i in seq( 2 , 12 )){
  new_n[i] = new_n[ i - 1 ] + ( r * new_n[ i - 1 ] * (K - new_n[ i - 1 ])/K )
}
#Print the new n vector to verify that the changed occurred to store the abundances
print(new_n)

#Next, make a time vector that goes from 1 to 12
#Pre allocate a vector for time
time <- rep( 0 , 12)

#Using a for loop, fill the time vector with values of 1 through 12 
for( i in seq( 1 , 12 )){
  time[i] = i
}
#Verify the vector has changed correctly
print(time)

#Now plot the abundance vector versus the time vector
plot( time , 
      new_n,
      xlab = "Time (Years)",
      ylab = "Abundance")
