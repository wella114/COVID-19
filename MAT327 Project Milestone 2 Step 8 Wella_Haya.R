#MAT327, Fall 2020, Project Milestone 2, Step 8, Wella Haya 12/8/2020

#importing the cleaned up version of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
NYC <- read_csv("US Confirmed Cases With Weather updated non cumulative.csv")

#viewing the Covid-19 Data
View(NYC)

#make a subset of the Covid-19 Data that removes all zero values
NYC4 <- subset(NYC, Bronx!=0 & `Brooklyn (Kings)`!=0 & `Manhattan (New York)` !=0 & Queens !=0 & `Staten Island (Richmond)` !=0)

#viewing the cleaned up Covid-19 Data
NYC4

#make a subset of the values in the Manhattan (New York) 
Manhattan <- subset(NYC4,`Manhattan (New York)`!=0)

#Compute the mean of the values in the Max_Temp column from the cleaned data & creating variable xbar for the mean
xbar <- mean(Manhattan$`Max-Temp`)

#viewing the mean of the values in the Max_Temp column from the cleaned data
xbar

#Compute the stardard deviation of the values in the Max_Temp column from the cleaned data & creating variable s for the standard deviation
s<- sd(Manhattan$`Max-Temp`)

#viewing the stardard deviation of the values in the Max_Temp column from the cleaned data
s

#viewing the subset of the values in the Manhattan (New York) 
Manhattan

#Creating variable n for the sample size. Sample size taken from the Manhattan table # A tibble: 251 x 14 (the 251 part)
n <- 251

#Compute the z-norm of the values in the Max_Temp column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.95)

#viewing the z-norm of the values in the Max_Temp column from the cleaned data
z

#Compute the lower limit confidence level of the values in the Max_Temp column from the cleaned data & creating variable t for the quantile
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the Max_Temp column from the cleaned data & creating variable t for the quantile
xbar+z*s/sqrt(n)

#Compute the midpoint of the z-norm of the values in the Max_Temp column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.5)

#Compute the midpoint limit confidence level of the values in the Max_Temp column from the cleaned data & creating variable t for the quantile
xbar+z*s/sqrt(n)



