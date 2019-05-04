#Andrew Roup
#Assignment 9
#5/3/2019
#EBIO 4420


library(ggplot2)
library(plyr)
library(tidyverse)

#Set the working directory
setwd("~/EBIO_4420/CompBioLabsAndHomework/Final_Project/Assignment09")

#Call in the data to be evaluated
trout_data <- read.csv("Norwegian_trout_lakes.csv")



#PART 1: Make a barplot comparing mean brown trout yield by richness
#---------------------------------------------------------------------

#First, group the data by FishRichness and determine the mean brown trout yield
#for each amount of fish richness
grouped_richness <- summarise( group_by( trout_data , FishRichness),
                           MeanYield = mean( TroutYield ))

#Then, I will create a bargraph with the fish richness on the x-axis and the mean yield of brown trout
#on the y-axis. After this, I will color the individual bars by the mean yield of brown trout.
mean_yield_plot <- ggplot( grouped_richness, aes( y = MeanYield , x = FishRichness , fill = MeanYield )) +geom_bar( stat = "identity" )
mean_yield_plot

#Finally, using an unpaired t.test I will determine whether the difference in mean net yield
#are significant due to fish richness
t.test(grouped_richness$MeanYield, paired = F)



#PART 2: Make a barplot showing mean brown trout yield per year
#---------------------------------------------------------------------

#First, group the data by sampling year and determine the mean brown trout yield
#for each year provided in the data 
grouped_data <- summarise( group_by( trout_data , SamplingYear ),
                          MeanYield = mean( TroutYield ))

#Next, graph the found mean brown trout yield by year as a barplot with the x-axis being
#the sampling year and the y-axis being the mean brown trout yield. Then, I will color the
#bars on the graph by the mean yield per year.
mean_yield_plot2 <- ggplot( grouped_data, aes( y = MeanYield , x = SamplingYear , fill = MeanYield )) +geom_bar( stat = "identity" )
mean_yield_plot2

#Finally, using a paired t.test I will determine whether or not the differences
#in mean net yield by year are significant
t.test(grouped_data$MeanYield, grouped_data$SamplingYear, paired = T)



#PART 3: Determine average brown trout yield by regulation/stocking
#---------------------------------------------------------------------

#First, I must group the data by stocking and regulation then find the 
#means of these groupings
grouped_data2 <- summarise( group_by( trout_data , Stocking , Regulation ),
                           MeanYield = mean( TroutYield ))

#Once I have found the mean I then must put another column into my data that
#will act as my x-axis when creating the graph
grouped_data2$Category <- c( "Neither" , "Regulation" , "Stocking" , "Both" )

#Now that I have the means for my desired categories (Regulated, Stocked, Both, Neither), 
#I must graph these found mean yield of brown trout by the categories they belong to.
#Then, I will color the bars of the graph by the mean yield of trout per category
mean_yield_plot3 <- ggplot( grouped_data2 , aes( y = MeanYield , x = Category, fill = MeanYield )) +geom_bar( stat = "identity" )
mean_yield_plot3

#Finally, using an unpaired t.test I will determine whether the differences in mean net yield 
#are significant for each category
t.test(grouped_data2$MeanYield, paired = FALSE)

