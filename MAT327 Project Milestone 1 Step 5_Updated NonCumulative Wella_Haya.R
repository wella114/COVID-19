#MAT327, Fall 2020, Project Milestone 1, Step 5, Wella Haya 12/8/2020

#importing the cleaned up version of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
NYC <- read_csv("US Confirmed Cases With Weather updated non cumulative.csv")

#viewing the Covid-19 Data
View(NYC)

#make a subset of the Covid-19 Data that removes all zero values
NYC4 <- subset(NYC, Bronx!=0 & `Brooklyn (Kings)`!=0 & `Manhattan (New York)` !=0 & Queens !=0 & `Staten Island (Richmond)` !=0)

#viewing the cleaned up Covid-19 Data
NYC4

#make a histogram of the values in the Bronx column cleaned data
hist(NYC4$Bronx, main = "COVID-19 Confirmed Cases in Bronx Cleaned Data", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Brooklyn (Kings) column cleaned data
hist(NYC4$`Brooklyn (Kings)`, main = "COVID-19 Confirmed Cases in Brooklyn Cleaned Data", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Manhattan column cleaned data
hist(NYC4$`Manhattan (New York)`, main = "COVID-19 Confirmed Cases in Manhattan Cleaned Data", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Queens column cleaned data
hist(NYC4$Queens, main = "COVID-19 Confirmed Cases in Queens Cleaned Data", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Staten Island Covid-19 column cleaned data
hist(NYC4$`Staten Island (Richmond)`, main = "COVID-19 Confirmed Cases in Staten Isalnd Cleaned Data", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")


