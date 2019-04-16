# Changes in Brown Trout Yield Across Different Lakes in Norway

## Introduction

Many species in many different ecosystems are impacted in numerous ways depending on the surrounding communities. One such variable that is almost always altered due to certain community composition is the abundance or richness of a species. A study was conducted in Norway which explored how brown trout ( *Salmo trutta* L.) net yield was impacted by several different factors such as environmental gradients and community structure (Eloranta et al. 2015). Using the data collected in that study (Eloranta et al. 2015), I want to further explore several different variables that were recorded in order to further understand the relationship between brown trout net yields and the surrounding environment. My driving questions for this project are which species being present in the community altered brown trout yield the most, did the year of when the data was collected change the results, and was there a significant change in brown trout yield due to stocking or regulation of the fish?

<hr>

## Summary of Data to be Analyzed


### Goals of Original Study

The goals of the original study were to test changing abiotic factors and community structure of fish to determine how these variables altered the structure of fish communities and the relationships between the different species that inhabited them (Eloranta et al. 2015). Their focus was on isolated bodies of water (lakes) within Norway due to their isolation in order to test how these species were handling different variables (Eloranta et al. 2015). Their baseline fish that they tested upon was the brown trout and they used net yields of the brown trout in different lakes, environmental variables, and other fish species that were present in those areas to determine how all these variables impacted structure and relationships of fish communities (Eloranta et al. 2015).

### Description of Methodology

The authors of the study collected their data from a database that had recorded values for brown trout net yield in different lakes across Norway and also took place across different years. In their study, they disregarded time as a variable and instead used a space-for-time substitution to test the different lakes in Norway. The data that they focused on collecting was the lake temperature, catchment productivity, and other fish species present in the lake at that time to test the impacts on brown trout (Eloranta et al. 2015).

### Type of Data in this Data-set
Types of data present in this data-set are:

* Characters
* Numbers
* Factors
* Integers

Also, the data contains strings and dates and is quantitative in nature. There are no qualitative data in this data-set.

#### Format of Data

The format of the data is in a '.csv' file of one sheet on Microsoft Excel. 

#### Size of Data

The size of the data is 71 KB.


#### Inconsistencies in the Data

As I have looked it over, I have found no inconsistencies with the data. There are no 'NA' or 'NaN' values.

#### What the Data Represents about the Biology

The data itself is extremely important to the biology they are exploring. Their research looks to test whether climate change or other environmental factors may be impacting brown trout species and abundance and determining an answer to this question is vital in understanding whether or not the brown trout is in danger. Climate change is altering many different species and understanding how it is altering them will aid in research towards conservation of these species. The data also is important in furthering the fields understanding of competitive exclusion among different species in light of climate change and looks towards many different lakes and examples to derive an answer.

<hr>

## Description of Analysis to be Done

To answer my driving questions I will need to conduct several different graphical analyses. 
* First, I will need to load in my data to R
* Second, to answer my question on which species of impacted the brown trout net yield the most significantly, I will subset the data by fish species and only contain lines of the data that were found to have that species of fish present. After doing this, I will find the average brown trout net yield when this species was present to determine how this fish was involved with the changes in net yield. After doing this for each fish species, I will compare the average net yield of brown trout for each species on a bar plot to see how much each species of fish altered the net yield of brown trout. It is important to note that there will be confounding variables in most of the subsets as there are more than one species of fish present in most cases.
* Third, I will create a graphical analysis to conduct whether or not the year of the data on brown trout yield altered the actual amount or not. In the Eloranta study, they ignored the year and focused specifically on the lakes. Because of this, I want to know if the year actually did have a significant impact. To do this I will find the average net yield of brown trout for each year and compare all the years side by side on a bar plot to see whether there are or are not significant changes. If I can, I hope to also compare the years of the study upon the species of fish to see if there are significant changes in that regard.
* Fourth, to answer my final question I will look at whether the lakes that the brown trout yield was recorded in were being stocked with brown trout or the brown trout were being regulated. To do this, I will subset the data into three different categories, lakes that were being only stocked, lakes being only regulated, and lakes being stocked and regulated. I will then find the average brown trout net yield of each category to determine whether this variable may also be significant in altering brown trout net yield. 

<hr>

## References

Eloranta AP, Helland IP, Sandlund OT, Hesthagen T, Ugedal O, Finstad AG (2016) Community structure influences species’ abundance along environmental gradients. Journal of Animal Ecology 85(1), 273–282 [https://doi.org/10.1111/1365-2656.12461](https://doi.org/10.1111/1365-2656.12461)

Eloranta AP, Helland IP, Sandlund OT, Hesthagen T, Ugedal O, Finstad AG (2015) Data from: Community structure influences species’ abundance along environmental gradients. Dryad Digital Repository. [https://doi.org/10.5061/dryad.62v6r](https://doi.org/10.5061/dryad.62v6r)
