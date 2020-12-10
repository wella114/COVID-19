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

#Compute the lower limit confidence level of the values in the Max_Temp column from the cleaned data 
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the Max_Temp column from the cleaned data
xbar+z*s/sqrt(n)

#Compute the midpoint limit confidence level (Mean) of the values in the Max_Temp column from the cleaned data 
mean(NYC4$`Max-Temp`)

#viewing the cleaned up Covid-19 Data
NYC4

#Compute the mean of the values in the Bronx column from the cleaned data & creating variable xbar for the mean
xbar <- mean(NYC4$Bronx)

#viewing the mean of the values in the Bronx column from the cleaned data
xbar

#Compute the stardard deviation of the values in the Bronx column from the cleaned data & creating variable s for the standard deviation
s<- sd(NYC4$Bronx)

#viewing the stardard deviation of the values in the Bronx column from the cleaned data
s

#Creating variable n for the sample size. Sample size taken from the NYC4 table # A tibble: 251 x 14 (the 251 part)
n <- 251

#Compute the z-norm of the values in the Bronx column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.95)

#viewing the z-norm of the values in the Bronx column from the cleaned data
z

#Compute the lower limit confidence level of the values in the Bronx column from the cleaned data 
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the Bronx column from the cleaned data 
xbar+z*s/sqrt(n)

#View the midpoint limit confidence level (Mean) of the values in the Bronx column from the cleaned data 
xbar

#Compute the mean of the values in the `Brooklyn (Kings)` column from the cleaned data & creating variable xbar for the mean
xbar <- mean(NYC4$`Brooklyn (Kings)`)

#viewing the mean of the values in the `Brooklyn (Kings)` column from the cleaned data
xbar

#Compute the stardard deviation of the values in the `Brooklyn (Kings)` column from the cleaned data & creating variable s for the standard deviation
s<- sd(NYC4$`Brooklyn (Kings)`)

#viewing the stardard deviation of the values in the `Brooklyn (Kings)` column from the cleaned data
s

#Creating variable n for the sample size. Sample size taken from the NYC4 table # A tibble: 251 x 14 (the 251 part)
n <- 251

#Compute the z-norm of the values in the `Brooklyn (Kings)` column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.95)

#viewing the z-norm of the values in the `Brooklyn (Kings)` column from the cleaned data
z

#Compute the lower limit confidence level of the values in the `Brooklyn (Kings)` column from the cleaned data 
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the `Brooklyn (Kings)` column from the cleaned data 
xbar+z*s/sqrt(n)

#View the midpoint limit confidence level (Mean) of the values in the `Brooklyn (Kings)` column from the cleaned data 
xbar

#Compute the mean of the values in the `Manhattan (New York)` column from the cleaned data & creating variable xbar for the mean
xbar <- mean(NYC4$`Manhattan (New York)`)

#viewing the mean of the values in the `Manhattan (New York)` column from the cleaned data
xbar

#Compute the stardard deviation of the values in the `Manhattan (New York)` column from the cleaned data & creating variable s for the standard deviation
s<- sd(NYC4$`Manhattan (New York)`)

#viewing the stardard deviation of the values in the `Manhattan (New York)` column from the cleaned data
s

#Creating variable n for the sample size. Sample size taken from the NYC4 table # A tibble: 251 x 14 (the 251 part)
n <- 251

#Compute the z-norm of the values in the `Manhattan (New York)` column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.95)

#viewing the z-norm of the values in the `Manhattan (New York)` column from the cleaned data
z

#Compute the lower limit confidence level of the values in the `Manhattan (New York)` column from the cleaned data 
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the`Manhattan (New York)` column from the cleaned data 
xbar+z*s/sqrt(n)

#View the midpoint limit confidence level (Mean) of the values in the `Manhattan (New York)` column from the cleaned data 
xbar

#Compute the mean of the values in the Queens column from the cleaned data & creating variable xbar for the mean
xbar <- mean(NYC4$Queens)

#viewing the mean of the values in the Queens column from the cleaned data
xbar

#Compute the stardard deviation of the values in the Queens column from the cleaned data & creating variable s for the standard deviation
s<- sd(NYC4$Queens)

#viewing the stardard deviation of the values in the Queens column from the cleaned data
s

#Creating variable n for the sample size. Sample size taken from the NYC4 table # A tibble: 251 x 14 (the 251 part)
n <- 251

#Compute the z-norm of the values in the Queens column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.95)

#viewing the z-norm of the values in the Queens column from the cleaned data
z

#Compute the lower limit confidence level of the values in the Queens column from the cleaned data 
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the Queens column from the cleaned data 
xbar+z*s/sqrt(n)

#View the midpoint limit confidence level (Mean) of the values in the Queens column from the cleaned data 
xbar

#Compute the mean of the values in the `Staten Island (Richmond)` column from the cleaned data & creating variable xbar for the mean
xbar <- mean(NYC4$`Staten Island (Richmond)`)

#viewing the mean of the values in the `Staten Island (Richmond)` column from the cleaned data
xbar

#Compute the stardard deviation of the values in the `Staten Island (Richmond)` column from the cleaned data & creating variable s for the standard deviation
s<- sd(NYC4$`Staten Island (Richmond)`)

#viewing the stardard deviation of the values in the `Staten Island (Richmond)` column from the cleaned data
s

#Creating variable n for the sample size. Sample size taken from the NYC4 table # A tibble: 251 x 14 (the 251 part)
n <- 251

#Compute the z-norm of the values in the `Staten Island (Richmond)` column from the cleaned data & creating variable z for the z-norm
z<-qnorm(0.95)

#viewing the z-norm of the values in the `Staten Island (Richmond)` column from the cleaned data
z

#Compute the lower limit confidence level of the values in the `Staten Island (Richmond)` column from the cleaned data 
xbar-z*s/sqrt(n)

#Compute the upper limit confidence level of the values in the `Staten Island (Richmond)` column from the cleaned data 
xbar+z*s/sqrt(n)

#View the midpoint limit confidence level (Mean) of the values in the `Staten Island (Richmond)` column from the cleaned data 
xbar


