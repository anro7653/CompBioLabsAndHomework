#Andrew Roup
#Lab 9
#3/15/2019
#EBIO 4420

setwd("~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab09")
getwd()


#-------------------------------------------------------------------------------------

#Part 1
#Convert the time and date data of the data set to values that actually represent time
camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv")

#Using strptime(), put the correct format of the time and data that is present in the 
#datafile so that the character values convert correctly to time date values
camData$DateTime <- strptime(camData$DateTime, '%d/%m/%Y %H:%M')

#-------------------------------------------------------------------------------------

#Part 2 
#Identify the years that are incorrect in the data set
#Save the datetime values of the dataset to a date time vector to be modified
dateTime <- camData$DateTime

#Look at the specific year values for the dateTime vector we created above
print(dateTime$year)

#In this, I found that some of the values were incorrect, being any value that is -1887,
#and what the correct conversion was values with the year as 113

#--------------------------------------------------------------------------------------

#Part 3
#Convert the incorrect values of year that are 0013 and make them 2013

#Create a for loop in which you look at the values of the year and find the outliers,
#in this case any years that are -1887 need to be converted to 113 in order to change
#the years from 0013 to 2013.
for ( i in 1:length(dateTime) ) {
  if ( dateTime$year[i] <= 0 ){
    dateTime$year[i] <- dateTime$year[i] + 2000
  }
}

#Now that all the years values were 113, reapply them to the original data set
camData$DateTime <- dateTime
print(camData$DateTime)

#-------------------------------------------------------------------------------------

#Part 4
#To compare three different categories and the average time between them, I will want to 
#subset the data to the categories that I want

#For example, lets look at the combo of season = wet, station = 10, and species = elephant
elephantsWet_10 <- camData[camData$Species == "Elephant" & camData$Season == "W" & 
                          camData$Station == 10, ]

#Evaluate over the subset that we created mean the differences in the times between all
#the observation in our dataset
for ( i in 2:length(elephantsWet_10$DateTime)) {
  average_time <- mean(elephantsWet_10$DateTime[i] - elephantsWet_10$DateTime[i-1])
}

#Print what the average time is
print(average_time)

#These values can be changed to any station, season, or species that you want and you 
#will get varying results/average times for changing these variables

#-------------------------------------------------------------------------------------



