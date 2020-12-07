#MAT327, Fall 2020, Project Milestone 2, Step 7, Wella Haya 12/6/2020

#importing the cleaned up version of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
NYC <- read_csv("US Confirmed Cases With Weather.csv")

#viewing the Covid-19 Data
View(NYC)

#make a subset of the Covid-19 Data that removes all zero values
NYC4 <- subset(NYC, Bronx!=0 & `Brooklyn (Kings)`!=0 & `Manhattan (New York)` !=0 & Queens !=0 & `Staten Island (Richmond)` !=0)

#viewing the cleaned up Covid-19 Data
NYC4

#make a scatterplot of the values in the Bronx column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$Bronx, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in the Bronx Cleaned Data")

#Compute the correlation of the values in the Bronx column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
cor(NYC4$Bronx, NYC4$`Max-Temp`) 

#make a scatterplot of the values in the Brooklyn (Kings) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$`Brooklyn (Kings)`, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Brooklyn Cleaned Data")

#Compute the correlation of the values in the Brooklyn (Kings) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
cor(NYC4$`Brooklyn (Kings)`, NYC4$`Max-Temp`)

#make a scatterplot of the values in the Manhattan (New York) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$`Manhattan (New York)`, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Manhattan Cleaned Data")

#Compute the correlation of the values in the Manhattan (New York) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
cor(NYC4$`Manhattan (New York)`, NYC4$`Max-Temp`)

#make a scatterplot of the values in the Queens column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$Queens, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Queens Cleaned Data")

#Compute the correlation of the values in the Queens column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
cor(NYC4$Queens, NYC4$`Max-Temp`)

#make a scatterplot of the values in the Staten Island (Richmond) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$`Staten Island (Richmond)`, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Staten Island Cleaned Data")

#Compute the correlation of the values in the Staten Island (Richmond) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
cor(NYC4$`Staten Island (Richmond)`, NYC4$`Max-Temp`)


