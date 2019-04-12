#Andrew Roup
#4/12/2019
#EBIO 4420
#Lab 12


#Before starting
setwd("~/EBIO_4420/CompBioLabsAndHomework/Labs/Lab12")

#Then read in the data we will be using
cusack_data <- read.csv("Cusack.csv")

#Call in ggplot and plyr
library(ggplot2)
library(plyr)

#PROBLEM ONE & TWO
#--------------------------------------------------

#Make a barplot for species count
species_plot <- ggplot(cusack_data, aes(Species)) +geom_bar(stat = "count") #<- Stat = "count" for counts on the y-axis

#This is what spins the x-axis labels
species_plot +theme(axis.text.x = element_text(angle = 90, hjust = 1))


#PROBLEM THREE
#--------------------------------------------------


#To find the counts of the data use plyr package and put the species into a data.frame
new_cusack <- count(cusack_data, "Species")

#Examine data
str(new_cusack)

#Reorder species in incresing order from top to bottom based off of frequency
new_cusack$Species <- factor(new_cusack$Species, 
                             levels = new_cusack$Species[order(-new_cusack$freq)])

#To graph, same code as before with small changes to aes()
new_species_plot <- ggplot(new_cusack, aes(Species, freq)) +
  geom_bar(stat = "identity")   
new_species_plot + coord_flip() #<- Flips the x and y-axis



