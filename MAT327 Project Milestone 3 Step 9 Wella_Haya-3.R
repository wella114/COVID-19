#MAT327, Fall 2020, Project Milestone 3, Step 9, Wella Haya 12/10/2020

#importing the cleaned up version of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
NYC <- read_csv("US Confirmed Cases With Weather updated non cumulative.csv")

#viewing the Covid-19 Data
View(NYC)

#make a subset of the Covid-19 Data that removes all zero values
NYC4 <- subset(NYC, Bronx!=0 & `Brooklyn (Kings)`!=0 & `Manhattan (New York)` !=0 & Queens !=0 & `Staten Island (Richmond)` !=0)

#viewing the cleaned up Covid-19 Data
NYC4

#make a scatterplot of the values in the Bronx column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$Bronx, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in the Bronx Cleaned Data")

#Create subset of linear regression from the values in the Bronx column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
lrbronx.lm <- lm(`Max-Temp`~Bronx,data=NYC4)

#View linear regression line in red of the values in the Bronx column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
abline(lrbronx.lm,col = "red")

#View linear regression summary of the values in the Bronx column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
summary(lrbronx.lm)

#make a histogram of the residual values from the linear regression model lrbronx.lm 
hist(resid(lrbronx.lm), xlab = "Confirmed Covid Cases", ylab = "Frequency", main = "Residuals of Confirmed Covid Cases in Bronx Cleaned Data")

#Compute the mean of the residuals from the linear regression model lrbronx.lm 
mean(resid(lrbronx.lm))

#make a scatterplot of the values in the Bronx column (X-Values) and the the residual values from the linear regression model lrbronx.lm 
plot(NYC4$Bronx, resid(lrbronx.lm), xlab = "Confirmed Covid Cases", ylab = "Residuals", main = "Confirmed Covid Cases in Bronx Cleaned Data & Residuals")

# Add a horizontal line at 0 to the Residuals Bronx scatterplot 
abline(h = 0, col = "red")

#make a scatterplot of the values in the Brooklyn (Kings) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$`Brooklyn (Kings)`, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Brooklyn Cleaned Data")

#Create subset of linear regression from the values in the Brooklyn (Kings) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
lrbrooklyn.lm <- lm(`Max-Temp`~`Brooklyn (Kings)`,data=NYC4)

#View linear regression line in red of the values in the Brooklyn (Kings) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
abline(lrbrooklyn.lm,col = "red")

#View linear regression summary of the values in the Brooklyn (Kings) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
summary(lrbrooklyn.lm)

#make a histogram of the residual values from the linear regression model lrbrooklyn.lm 
hist(resid(lrbrooklyn.lm), xlab = "Confirmed Covid Cases", ylab = "Frequency", main = "Residuals of Confirmed Covid Cases in Brooklyn Cleaned Data")

#Compute the mean of the residuals from the linear regression model lrbrooklyn.lm
mean(resid(lrbrooklyn.lm))

#make a scatterplot of the values in the Brooklyn (Kings) column (X-Values) and the the residual values from the linear regression model lrbrooklyn.lm
plot(NYC4$`Brooklyn (Kings)`, resid(lrbrooklyn.lm), xlab = "Confirmed Covid Cases", ylab = "Residuals", main = "Confirmed Covid Cases in Brooklyn Cleaned Data & Residuals")

# Add a horizontal line at 0 to the Residuals Brooklyn scatterplot 
abline(h = 0, col = "red")

#make a scatterplot of the values in the Manhattan (New York) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$`Manhattan (New York)`, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Manhattan Cleaned Data")

#Create subset of linear regression from the values in the Manhattan (New York) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
lrmanhattan.lm <- lm(`Max-Temp`~`Manhattan (New York)`,data=NYC4)

#View linear regression line in red of the values in the Manhattan (New York) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
abline(lrmanhattan.lm,col = "red")

#View linear regression summary of the values in the Manhattan (New York) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
summary(lrmanhattan.lm)

#make a histogram of the residual values from the linear regression model lrmanhattan.lm 
hist(resid(lrmanhattan.lm), xlab = "Confirmed Covid Cases", ylab = "Frequency", main = "Residuals of Confirmed Covid Cases in Manhattan Cleaned Data")

#Compute the mean of the residuals from the linear regression model lrmanhattan.lm
mean(resid(lrmanhattan.lm))

#make a scatterplot of the values in the Manhattan (New York) column (X-Values) and the the residual values from the linear regression model lrmanhattan.lm
plot(NYC4$`Manhattan (New York)`, resid(lrmanhattan.lm), xlab = "Confirmed Covid Cases", ylab = "Residuals", main = "Confirmed Covid Cases in Manhattan Cleaned Data & Residuals")

# Add a horizontal line at 0 to the Residuals Manhattan scatterplot 
abline(h = 0, col = "red")

#make a scatterplot of the values in the Queens column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$Queens, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Queens Cleaned Data")

#Create subset of linear regression from the values in the Queens column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
lrqueens.lm <- lm(`Max-Temp`~Queens,data=NYC4)

#View linear regression line in red of the values in the Queens column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
abline(lrqueens.lm,col = "red")

#View linear regression summary of the values in the Queens column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
summary(lrqueens.lm)

#make a histogram of the residual values from the linear regression model lrqueens.lm
hist(resid(lrqueens.lm), xlab = "Confirmed Covid Cases", ylab = "Frequency", main = "Residuals of Confirmed Covid Cases in Queens Cleaned Data")

#Compute the mean of the residuals from the linear regression model lrqueens.lm
mean(resid(lrqueens.lm))

#make a scatterplot of the values in the Queens column (X-Values) and the the residual values from the linear regression model lrqueens.lm
plot(NYC4$Queens, resid(lrqueens.lm), xlab = "Confirmed Covid Cases", ylab = "Residuals", main = "Confirmed Covid Cases in Queens Cleaned Data & Residuals")

# Add a horizontal line at 0 to the Residuals Queens scatterplot 
abline(h = 0, col = "red")

#make a scatterplot of the values in the Staten Island (Richmond) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
plot(NYC4$`Staten Island (Richmond)`, NYC4$`Max-Temp`, xlab = "Confirmed Covid Cases", ylab = "Max Temperature in NYC", main = "Confirmed Covid Cases in Staten Island Cleaned Data")

#Create subset of linear regression from the values in the Staten Island (Richmond) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
lrstatenisland.lm <- lm(`Max-Temp`~`Staten Island (Richmond)`,data=NYC4)

#View linear regression line in red of the values in the Staten Island (Richmond) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
abline(lrstatenisland.lm,col = "red")

#View linear regression summary of the values in the Staten Island (Richmond) column (X-Values) and the values in the Max_Temp column (Y-values) from the cleaned data
summary(lrstatenisland.lm)

#make a histogram of the residual values from the linear regression model lrstatenisland.lm
hist(resid(lrstatenisland.lm), xlab = "Confirmed Covid Cases", ylab = "Frequency", main = "Residuals of Confirmed Covid Cases in Staten Island Cleaned Data")

#Compute the mean of the residuals from the linear regression model lrstatenisland.lm
mean(resid(lrstatenisland.lm))

#make a scatterplot of the values in the Staten Island (Richmond) column (X-Values) and the the residual values from the linear regression model lrstatenisland.lm
plot(NYC4$`Staten Island (Richmond)`, resid(lrstatenisland.lm), xlab = "Confirmed Covid Cases", ylab = "Residuals", main = "Confirmed Covid Cases in Staten Island Cleaned Data & Residuals")

# Add a horizontal line at 0 to the Residuals Staten Island scatterplot 
abline(h = 0, col = "red")