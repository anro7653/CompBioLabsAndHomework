#Andrew Roup
#Lab 11
#4/5/2019
#EBIO 4420

library("tidyverse")


#First, set working directory
setwd("~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab11")
getwd()


#PART 1
#-----------------------------------------------------

#Call in the data, with stringAsFactors = false
wood_density_data <- read.csv("GlobalWoodDensity.csv", stringsAsFactors = F )

#Rename the density column
colnames(wood_density_data)[4] <- "woodDensity"


#PART 2
#-----------------------------------------------------

#Task 4: Removing rows with missing data

#4a:
#Determine the row that the NA value is in
which(is.na(wood_density_data$woodDensity))

#4b:
#Remove the NA value from the data frame
wood_density_data <- na.omit(wood_density_data)


#Task 5: Dealing with one kind of pseudo-replication

#Group the data by family and species, then average the mean of the densities for replicant
#species
grouped_data <- summarise(group_by(wood_density_data, Binomial, Family),
                      MeanDensity = mean(woodDensity))


#Task 6:
#Sort average densities by family rather than by both family and species
family_density_data <- summarise(group_by(wood_density_data, Family),
                                 MeanDensity = mean(woodDensity))
