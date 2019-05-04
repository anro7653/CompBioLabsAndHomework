# Changes in Brown Trout Yield Across Different Lakes in Norway

## Biological Question

Is the net yield of brown trout significantly changed due to variable fish richness (number of different fish species recorded in a given lake), the year in which the abundance is recorded, and the presence or absence of anthropogenic factors such as stocking and water level regulation?

<hr> 

## Context

Many species are impacted in numerous ways depending on the surrounding communities within their ecosystem. One such variable that is almost always altered due to certain community composition is the abundance or richness of a species. A study was conducted in Norway which explored how brown trout ( *Salmo trutta* L.) net yield was impacted by several different factors which included environmental gradients and community structure (Eloranta et al. 2015). Using the data collected in that study (Eloranta et al. 2015), I want to further explore several different variables that were recorded in order to further understand the relationship between brown trout net yields and the surrounding environment. My driving questions for this project include the difference in brown trout net yield  depending on fish richness (total number of fish species in a community) and if this change was significant, did the year in which the data was collected significantly change the average net yield of brown trout (tested across all lakes), and if there was a significant change in brown trout yield due to stocking or regulation of the fish.

<hr>

## Methods

#### Source of the data:

The data I used to answer my questions was provided by the Eloranta et al. study (2015). This data includes many variables such as whether or not the lake was being stocked or regulated, the year in which the data was recorded, brown trout net yield within a given lake in the year they were recorded, and provided fish richness for those given lakes in the year they were recorded. This data is also exclusive to only lakes within Norway and the native fish communities that are found within these lakes. 

The data was produced through the original authors (Eloranta et al. 2015) gathering and recording the aforementioned variables from several databases that had already provided and observed relevant information. Such databases provided the authors with the amount of brown trout that were fished per lake and per year, lake morphometry, known fish structure, GIS data, and NDVI (Normalized Difference Vegetation Index) data.

This data includes 38 separate variables and 425 different observations that spanned across many years and many different lakes. Types of data include characters, numbers, factors, and integers. I did not find any special challenges within the data as the original authors (Eloranta et al. 2015) collected the information from the databases very well.




#### What the original authors did with the data:

The authors of the Eloranta et al. study (2015) tested changing abiotic factors in Norway lakes and how biotic factors, such as community structure of fish and fish richness, and how the abiotic and biotic factors shared a relationship. Using this, the original authors determined how these variables altered the structure of fish communities and the relationships between the different species that inhabited them (Eloranta et al. 2015). Their focus was on many different lakes within Norway over a thirty year time frame and how abiotic and biotic factors influenced the fish communities within the lakes (Eloranta et al. 2015). Their baseline fish that they tested upon was the brown trout and they used net yields of the brown trout in the lakes, environmental variables, and other fish species that were present in those areas to determine how all these variables impacted structure and relationships of fish communities (Eloranta et al. 2015). 

In their study (Eloranta et al. 2015), they disregarded time as a variable and instead used a space-for-time substitution to test the different lakes in Norway. The data that they focused on collecting was the lake temperature, catchment productivity, and other fish species present in the lake at that time to test the impacts on brown trout yield across the different lakes in Norway (Eloranta et al. 2015).

#### What I did with the data and how I did it:

To answer my questions while using this data I needed to filter, parse, visualize, and finally analyze the data for statistical significance. The original authors focused mostly on the relationship of abiotic factors like environmental, temperature, and spatical differences impacts on fish community structure and brown trout net yield (Eloranta et al. 2015). However, I wanted to focus on fish richness, anthropogenic factors (regulation and stocking), and time differences in order to see if there was a significant difference in brown trout net yield across these variables that were not originally tested by Eloranta et al. (2015). To do this, I approached this data with the idea that I would need to subset the data into categories that I wanted to compare. My first subset included parsing and organizing my data by fish richness and mean brown trout yield. Creating a subset of this data allowed me to draw direct comparisons based off of the difference in fish richness and how the means of brown trout net yield were then changed. I then used an unpaired t-test in order to determine whether or not these changes in brown trout net yield were significant. Next, I performed similar subsets for mean brown trout net yield when compared to the year it was collected rather than the lake it was collected from and the average brown trout net yield within lakes that were being stocked, regulated, both, or neither. For these next two comparisons I used a paired t-test and unpaired t-test to determine the significance of difference in net brown trout yield, respectively. In each comparison I also included a bar plot to visualize the differences in mean brown trout yield across the independent variables of fish richness, year collected, and the regulation, stocked, neither, or both.

<hr>

## Results and Conclusions

 When answering my first question I looked at the difference in mean net trout yield depending on the fish richness. I found that there were ten different fish richness amounts recorded (1, 2, 3, 4, 5, 6, 7, 8, 9, and 11) for the amount of fish species present when the data was originally collected. I found that in lakes where the species richness was 1, the mean net yield of brown trout was at its greatest (1579 brown trout) and when the fish richness was within the range of 6 to 9 the mean net yield of brown trout was at its lowest (66-281 brown trout). When comparing these different variables, I also found that the mean brown trout yield was significantly different (p < 0.05) with a p-value of 0.003821. There was a decrease in mean net yield for brown trout as the fish richness was increased showing an inverse relationship, but when fish richness was at 11 there actually was an increase in mean net yield of brown trout which contradicts that trend.
 
![enter image description here](https://lh3.googleusercontent.com/b97gCa6g_McNJjcqmVw5Q2zoKNJX7Oza0d7bx4BwQUz8ki0FWNjZbedaMnOJHCXDom01VUuEHOMZ)

Next, I compared the mean brown trout yield by year to answer my second question. I found that the data present was compiled from 1971-2009. The year with the greatest mean net yield was 1972 (2733 brown trout) and the year with the lowest mean net yield was 1988 (116). However, these differences may be due in part to which lakes were included in those yearly studies. Even so, the difference in mean yield of brown trout was found to be significantly different (p < 0.05) from year to year after using a paired t-test. This answered my question as depending on the year, the actual differences in the mean yield of brown trout was significantly different from year to year with a p-value of 2.264e-09. Correlation can not yet be determined however due to an inconsistency on which lakes were being tested on a year by year basis in the data provided. 

![enter image description here](https://lh3.googleusercontent.com/VXsaeC8fjADd9YXWta_b6Ht6Cj2D910nnUcFQlPbG7DanIdg7PDF7IbYoTS0iEl0ZJpzyuAceY3h)

Finally, when answering my third question I looked at the differences between mean net yield of brown trout when compared to lakes that were stocked, regulated, neither, or both. The category of neither served as my control where there were no anthropogenic factors occurring within these lakes (when the data was collected). The lakes that were being neither stocked or regulated has a greater mean net yield of brown trout (1390) than lakes that were being regulated (1145) and lakes that were being both regulated and stocked (978). The only category that surpassed this in terms of mean net yield were lakes that were being only stocked with a mean net yield of 1411. The differences in the mean net yield of these brown trout was also found to be statistically significant (p <0.05) with a p-value of 0.001285. 

![enter image description here](https://lh3.googleusercontent.com/CDwFA-Eg5ka5BpHxGt17PgQIyt50FIptRpwkIgEnpsHmqR9KJH1OU6f2rpk7Lo3FqpM4ve8e-qht)

In conclusion, for each of my questions  above I found that there were significant differences in the mean net yield of brown trout when compared to different variables that were found within the data. However, these differences only allow for the identification of correlations and require more data and observations on the lakes of Norway over a larger span of time to make better claims. Even so, the results of my findings show that these categories are worth looking into and require attention when assessing the relationship of brown trout with fish richness, the year the data is being collected, and whether there are anthropogenic factors occurring within the lakes of Norway.

<hr>

## References

Eloranta AP, Helland IP, Sandlund OT, Hesthagen T, Ugedal O,
	Finstad AG (2016) Community structure influences species’ 
	abundance along environmental gradients. Journal of Animal
	Ecology 85(1), 273–282 [https://doi.org/10.1111/1365
	2656.12461](https://doi.org/10.1111/1365-2656.12461)

Eloranta AP, Helland IP, Sandlund OT, Hesthagen T, Ugedal O,
	Finstad AG (2015) Data from: Community structure influences
	species’ abundance along environmental gradients. Dryad
	Digital Repository. [https://doi.org/10.5061/dryad.62v6r
	(https://doi.org/10.5061/dryad.62v6r)
