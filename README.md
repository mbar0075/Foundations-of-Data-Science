# Foundations of Data Science
 
# Author
**Matthias Bartolo 0436103L**


## Preview:
<p align='center'>
  <img src="https://github.com/mbar0075/Foundations-of-Data-Science/assets/103250564/35117e4e-5723-4b2e-aba2-1b61d06989d8" style="display: block; margin: 0 auto; width: 40%; height: auto;"></br>
  <img src="https://github.com/mbar0075/Foundations-of-Data-Science/assets/103250564/7560d91c-b3ae-491f-ac30-4f4291ceb97d" style="display: block; margin: 0 auto; width: 40%; height: auto;">
  <img src="https://github.com/mbar0075/Foundations-of-Data-Science/assets/103250564/3b00fa3e-150c-4076-8b88-f6f31cb5f813"  style="display: block; margin: 0 auto; width: 40%; height: auto;">
</p>

## Description of Task:
The aim of these projects was to develop skills required to navigate an increasingly data-driven world. The focus was on exploring different data science platforms and utilizing the **R programming language**. The projects aimed to provide a comprehensive understanding of various techniques related to data collection, storage, access, cleaning, transformation, and data management. Additionally, an emphasis was placed on data analytics using probability theory, distributions, sampling techniques, multivariate thinking, correlation and causation, and hypothesis testing. The projects also involved gaining familiarity with visualization tools and libraries to create visually appealing and informative visualizations and dashboards.

<p align='center'>
  <img src="https://github.com/mbar0075/Foundations-of-Data-Science/assets/103250564/d654f659-c25d-4067-8ec3-535aa1d29bf7" style="display: block; margin: 0 auto; width: 60%; height: auto;"></br>
</p>

### Group Project:
This project revolved around a dataset from **Rent-Apart**, a Dutch rental-aggregation company. The dataset encompassed house prices, rental agencies, cities, bedrooms, and surface area. Thisi project was structured into tasks that facilitated a deeper comprehension of the data, data cleaning, data analysis, and interpretation and presentation of the findings.

The initial task involved an in-depth analysis of the dataset to extract meaningful insights. Statistical analysis techniques were applied to enhance the understanding of the dataset. This preliminary exploration shed light on the distribution of the features and guided subsequent analysis decisions.

**Data cleaning** was a pivotal step in ensuring the accuracy and reliability of the analysis. Null values in the dataset were addressed, taking into consideration specific cities and utilizing surface area and number of bedrooms to impute missing values. The handling of instances where no data was available for a city was approached thoughtfully.

```r
APPSM <- vector()

for (i in unique(dataInitial$city)){#Looping through all the unique cities and 
  #calculating the mean of the house prices and surface area
  tmp <- which(dataInitial$city==i)

  Hprice <- c(dataInitial[tmp,1])#Storing the respective data in vectors
  Surface <- c(dataInitial[tmp,5])

  MP <- mean(Hprice)#Working out the mean
  MS <- mean(Surface)

  APPSM <- append(APPSM,(MP/MS)) #Working out and storing the 
  #average Price Per Square Meter
}

cities <- unique(dataInitial$city)

loc <- cities[which(APPSM==max(APPSM))]#Retrieving the city name through the 
#max and match functions
print(loc)#Printing the respective location of the max value
print(max(APPSM))#Printing the maximum value

loc2 <- cities[which(APPSM==min(APPSM))]#Retrieving the city name through the 
#min and match functions
print(loc2)#Printing the respective location of the min value
print(min(APPSM))#Printing the minimum value
```

Building upon the initial exploration and the cleaned dataset, a comprehensive data analysis was conducted. This encompassed calculating sample mean values for price, bedrooms, and floor area across the country, identifying the cities with the highest and lowest living costs in terms of surface area, visualizing the price distribution across the country using heatmaps and maps, examining the distribution and standard deviation of prices in major cities such as Amsterdam and Rotterdam, exploring correlations between variables, and employing regression techniques to predict apartment characteristics and monthly rent in specific cities.

To effectively communicate the findings, a simple static flexdashboard was developed. This served as a concise and informative platform for presenting the analysis from the projects. Additionally, all work was thoroughly documented in an R markdown (.Rmd) document, providing detailed explanations and justifications for the decisions made throughout the projects.

<p align='center'>
  <img src="https://github.com/mbar0075/Foundations-of-Data-Science/assets/103250564/7d90e5ef-e593-4077-945f-938301b803c7" style="display: block; margin: 0 auto; width: 90%; height: auto;"></br>
</p>

### Individual Project:
In this project, a series of challenges were presented, each requiring the application of **probability theory** and **statistical analysis**. The project involved exploring different scenarios and calculating probabilities based on given information.

The first challenge, known as the **"Queen's Gambit"**, involved a chess player named Beth playing two games against an opponent of unknown skill level. The opponent could be a beginner, intermediate, or a master, each with different probabilities of winning against Beth. The goal was to determine the probability of Beth winning the first game and, given that she won the first game, the probability of her winning the second game.

In the second challenge, called **"Conditionitis"**, a screening test for a fictitious disease was analyzed. The test had a certain accuracy in identifying the disease and a known rate of false positives. The objective was to calculate the probability of a man having the disease given a positive test result, as well as the probability of having the disease given a negative test result.

<p align='center'>
  <img src="https://github.com/mbar0075/Foundations-of-Data-Science/assets/103250564/457800cc-f580-4a3c-9ddb-797ad884fb35" style="display: block; margin: 0 auto; width: 55%; height: auto;"></br>
</p>

The third challenge, referred to as **"Bottled Water"**, focused on assessing whether a water dispensing machine was operating properly based on the amount of water dispensed into bottles. A sample of 35 bottles was taken, and the average amount dispensed and its variance were provided. The task was to determine if there was evidence that the machine needed repairs.

In each of these challenges, hypotheses were formulated to guide the analysis. Critical values and rejection regions were established to make decisions based on the calculated test statistics. Sample parameters were calculated and compared to the critical values to draw conclusions.

### Closing Remarks:
These projects provided valuable hands-on experience in applying data science techniques, analyzing real-world datasets, and presenting findings effectively. The skills and knowledge acquired through these projects are essential for navigating the data-driven landscape and making meaningful contributions in the field of data science.


## Deliverables:
The repository includes two directories:<br />
1. [Data_Science_Individual:](https://github.com/mbar0075/Foundations-of-Data-Science/tree/main/Data_Science_Individual) Individual Project utilising R
2. [GroupProject:](https://github.com/mbar0075/Foundations-of-Data-Science/tree/main/GroupProject) Group Project  utilising R
