#Andrew Roup
#Lab 3
#2/3/2019
#EBIO 4420

#PART ONE

#Lab step #3:
#These variables store the intial amount of chips and guests I have coming
bags_of_chips <- 5
guests <- 8

#Lab step #5:
#This variable represents the amount of chips each guest will eat
guest_consumption <- .4

#Lab step #7:
#This will calculate the amount of leftover chips after all the guests and 
#myself consume our portions of the chips
leftover_chips <- bags_of_chips - (  ( guests + 1 ) * guest_consumption)


#PART TWO

#Lab step #8:
#Create 5 vectors that represent the ranking of the star wars movies for 
#each guest, including myself
self   <- c( 7 , 6 , 5 , 1 , 2 , 3 , 4 )
Penny  <- c( 5 , 7 , 6 , 3 , 1 , 2 , 4 )
Jenny  <- c( 4 , 3 , 2 , 7 , 6 , 5 , 1 )
Lenny  <- c( 1 , 7 , 3 , 4 , 6 , 5 , 2 )
Stewie <- c( 6 , 7 , 5 , 4 , 3 , 1 , 2 )

#Lab step #9:
#Save both Penny and Lenny's ranking for Ep. IV in new varibles
PennyIV <- Penny[4]
LennyIV <- Lenny[4]

#Lab step #10:
#Concatenate all 5 sets of ranking into a single data object, then compare
#PennyIV, Penny, and the Ranking_table using str()
Ranking_table <- cbind( self , Penny , Jenny , Lenny , Stewie )
print(Ranking_table)

str(PennyIV)
str(Penny)
str(Ranking_table)
#These three differ as PennyIV is a single object and so only displays
#the value 3 that is a num, Penny is a vector and outputs a vector
#with one column and seven rows showing values for each row and all the 
#the values are num, and Ranking_table outputs a matrix with 
#5 columns and 7 rows where the rankings are all num values but the 
#names of each of the guests and myself are char values with some NULL
#values as well.

#Lab step #12:
#Make the 5 ranking sets into a data frame
Guest_Rank_dataframe  <- data.frame( self , Penny , Jenny , Lenny , Stewie )
Guest_Rank_dataframe2 <- as.data.frame(Ranking_table)

str(Guest_Rank_dataframe)
str(Guest_Rank_dataframe2)

dim(Guest_Rank_dataframe)
dim(Ranking_table)

typeof(Guest_Rank_dataframe)
typeof(Ranking_table)

Guest_Rank_dataframe == Ranking_table

#The differences between the object we created using cbind() and the 
#dataframe we created using str() is that for the object str() output a list
#of value types for each item in the object but for the data frame
#it only output the entire data frame and only signified the numbers as
#num.For both the data frame and the object we created dim() output the
#same answer showing that they are both 7 rows by 5 columns. For the 
#type0f() function the datarame output the type "list" and the object
#output the type "double". Finally for the '==' function when comparing the 
#two, it output a matrix filled with the values TRUE for each point,

#Lab step #14:
#Make a character vector of all the Star Wars episode roman numerals
SW_Episodes <- c( "I" , "II" , "III" , "IV" , "V" , "VI" , "VII" )

#Lab step #15: 
#Add appropriate rownames to the data frame
row.names(Guest_Rank_dataframe) <- SW_Episodes

print(Guest_Rank_dataframe)

#Lab step #16:
#Access the third row of the matrix produced from step #10
Ranking_table[ 3 , ]

#Lab step #17:
# Access the fourth column from a data frame produced from step #12
Guest_Rank_dataframe[ , 4 ]

#Lab step #18:
#Access your ranking for Episode V.
Guest_Rank_dataframe[ 5 , 1 ]

#Lab step #19:
#Access Penny's ranking for Episode II.
Guest_Rank_dataframe[ 2 , 2 ]

#Lab step #20:
#Access everyone's rankings for episodes IV - VI.
Guest_Rank_dataframe[ 4:6 , ]

#Lab step #21:
#Access everyone's rankings for episodes II, V, and VII.
Guest_Rank_dataframe[ c( 2 , 5 , 7 ) , ]

#Lab step #22:
#Access rankings for just Penny, Jenny, and Stewie for just episodes IV and VI.
Guest_Rank_dataframe[ c( 4 , 6) , c( 2 , 3 , 5) ]


#Lab step #23:
#In one of the objects created in step 10 or 12, switch Lenny's rankings for Episodes II and V

#First, I isolated the two points I wanted to switch and saved them as variables
new_LennyII <- Guest_Rank_dataframe[ 2 , 4 ]
new_LennyV  <- Guest_Rank_dataframe[ 5 , 4 ]

#Then, I reassigned the data points to the other variable values in order to do the swap
Guest_Rank_dataframe[ 2 , 4 ] <- new_LennyV 
Guest_Rank_dataframe[ 5 , 4 ] <- new_LennyII

#Print to check that it swapped
print(Guest_Rank_dataframe)


#Lab step #24:
#Grab the data for the ranking of episode III for Penny using the "words" instead of indices
Ranking_table[ 3 , "Penny" ]
Guest_Rank_dataframe[ "III" , "Penny" ]


#Lab step #25:
#Using the new form of indexing, swap back the values I swapped in step 23
Old_LennyV  <- Guest_Rank_dataframe[ "II" , "Lenny" ]  
Old_LennyII <- Guest_Rank_dataframe[ "V"  , "Lenny" ] 

#Reassign the original values to their original positions using the new indexing
Guest_Rank_dataframe[ "II" , "Lenny" ] <- Old_LennyII
Guest_Rank_dataframe[ "V" , "Lenny"  ] <- Old_LennyV

#print to check that it swapped back
print(Guest_Rank_dataframe)


#Lab step #26:
#Using the '$' operator, redo the switch that we undid in step #25

#I figured out how to get the swap in just 3 lines rather than the 4 lines I used in the 
#previous swaps
newest_LennyV <- Guest_Rank_dataframe$Lenny[2]  
Guest_Rank_dataframe$Lenny[2] <- Guest_Rank_dataframe$Lenny[5]
Guest_Rank_dataframe$Lenny[5] <- newest_LennyV
