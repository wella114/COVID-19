#MAT327, Fall 2020, Project Milestone 1, Step 6, Wella Haya 12/8/2020

#importing the cleaned up version of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
NYC <- read_csv("US Confirmed Cases With Weather updated non cumulative.csv")

#viewing the Covid-19 Data
View(NYC)

#make a subset of the Covid-19 Data that removes all zero values
NYC4 <- subset(NYC, Bronx!=0 & `Brooklyn (Kings)`!=0 & `Manhattan (New York)` !=0 & Queens !=0 & `Staten Island (Richmond)` !=0)

#viewing the cleaned up Covid-19 Datamean(NYC4$Bronx)
NYC4

#mean of the values in the Bronx column cleaned data
mean(NYC4$Bronx)

#median of the values in the Bronx column cleaned data
median(NYC4$Bronx)

#variance of the values in the Bronx column cleaned data
var(NYC4$Bronx)

#standard deviarion of the values in the Bronx column cleaned data
sd(NYC4$Bronx)

#mean of the values in the Brooklyn (Kings) column cleaned data
mean(NYC4$`Brooklyn (Kings)`)

#median of the values in the Brooklyn (Kings) column cleaned data
median(NYC4$`Brooklyn (Kings)`)

#variance of the values in the Brooklyn (Kings) column cleaned data
var(NYC4$`Brooklyn (Kings)`)

#standard deviarion of the values in the Brooklyn (Kings) column cleaned data
sd(NYC4$`Brooklyn (Kings)`)

#mean of the values in the Manhattan (New York) column cleaned data
mean(NYC4$`Manhattan (New York)`)

#median of the values in the Manhattan (New York) column cleaned data
median(NYC4$`Manhattan (New York)`)

#variance of the values in the Manhattan (New York) column cleaned data
var(NYC4$`Manhattan (New York)`)

#standard deviarion of the values in the Manhattan (New York) column cleaned data
sd(NYC4$`Manhattan (New York)`)

#mean of the values in the Queens column cleaned data
mean(NYC4$Queens)

#median of the values in the Queens column cleaned data
median(NYC4$Queens)

#variance of the values in the Queens column cleaned data
var(NYC4$Queens)

#standard deviarion of the values in the Queens column cleaned data
sd(NYC4$Queens)

#mean of the values in the Staten Island (Richmond) column cleaned data
mean(NYC4$`Staten Island (Richmond)`)

#median of the values in the Staten Island (Richmond) column cleaned data
median(NYC4$`Staten Island (Richmond)`)

#variance of the values in the Staten Island (Richmond) column cleaned data
var(NYC4$`Staten Island (Richmond)`)

#standard deviarion of the values in the Staten Island (Richmond) column cleaned data
sd(NYC4$`Staten Island (Richmond)`)

