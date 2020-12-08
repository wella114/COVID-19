#MAT327, Fall 2020, Project Milestone 1, Step 4, Wella Haya 12/8/2020

#importing the cleaned up version and non-cumulative of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
View(US_Confirmed_Cases_With_Weather_updated_non_cumulative)

#viewing the Covid-19 Data
View(NYC)

#make a histogram of the values in the Bronx column
hist(NYC$Bronx, main = "COVID-19 Confirmed Cases in Bronx", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Brooklyn (Kings) column
hist(NYC$`Brooklyn (Kings)`, main = "COVID-19 Confirmed Cases in Brooklyn (Kings)", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Manhattan column
hist(NYC$`Manhattan (New York)`, main = "COVID-19 Confirmed Cases in Manhattan (New York)", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Queens column
hist(NYC$Queens, main = "COVID-19 Confirmed Cases in Queens", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")

#make a histogram of the values in the Staten Island Covid-19 column
hist(NYC$`Staten Island (Richmond)`, main = "COVID-19 Confirmed Cases in Staten Island (Richmond)", xlab = "Covid-19 Confirmed Cases", ylab = "Frequency")
