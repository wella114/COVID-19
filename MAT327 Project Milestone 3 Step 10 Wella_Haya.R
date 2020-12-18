#MAT327, Fall 2020, Project Milestone 3, Step 10, Wella Haya 12/14/2020

#importing the cleaned up version of the US Confirmed cases of Covid-19 from John Hopkins university. For this data set we are specifically looking at the NYC Boroughs (Counties) and added information from the Weather Channel (specifically min/max temp and weather type) to see if there are any correlations between Covid-19 confirmed cases in NYC and the weather.
library(readr)
NYC <- read_csv("US Confirmed Cases With Weather updated non cumulative.csv")

#viewing the Covid-19 Data
View(NYC)

#make a subset of the Covid-19 Data that removes all zero values
NYC4 <- subset(NYC, Bronx!=0 & `Brooklyn (Kings)`!=0 & `Manhattan (New York)` !=0 & Queens !=0 & `Staten Island (Richmond)` !=0)

#viewing the cleaned up Covid-19 Data
NYC4

#create a subset of the values in the Weather Type column from the cleaned data
boxplot(Bronx ~ `Weather Type`, data=NYC4)

#open up library to help with visualization of boxplot
library(ggplot2)

#create an object for the boxplot of the values in the Weather Type column (x-Values) and the Bronx column (Y-Values) and change the theme to classic white background
bronx <- ggplot(NYC4, aes(`Weather Type`,Bronx)) + geom_boxplot()+theme_classic()

#view and add labels to boxplot
bronx + labs(y = "Confirmed Covid Cases", x = "Weather Type") + ggtitle("Confirmed Covid Cases in Bronx Cleaned Data & Weather Type")

#create an object for the boxplot of the values in the Weather Type column (x-Values) and the Brooklyn (Kings) column (Y-Values) and change the theme to classic white background
brooklyn <- ggplot(NYC4, aes(`Weather Type`,`Brooklyn (Kings)`)) + geom_boxplot()+theme_classic()

#view and add labels to boxplot
brooklyn + labs(y = "Confirmed Covid Cases", x = "Weather Type") + ggtitle("Confirmed Covid Cases in Brooklyn Cleaned Data & Weather Type")

#create an object for the boxplot of the values in the Weather Type column (x-Values) and the Manhattan (New York) column (Y-Values) and change the theme to classic white background
manhattan <- ggplot(NYC4, aes(`Weather Type`,`Manhattan (New York)`)) + geom_boxplot()+theme_classic()

#view and add labels to boxplot
manhattan + labs(y = "Confirmed Covid Cases", x = "Weather Type") + ggtitle("Confirmed Covid Cases in Manhattan Cleaned Data & Weather Type")

#create an object for the boxplot of the values in the Weather Type column (x-Values) and the Queens column (Y-Values) and change the theme to classic white background
queens <- ggplot(NYC4, aes(`Weather Type`, Queens)) + geom_boxplot()+theme_classic()

#view and add labels to boxplot
queens + labs(y = "Confirmed Covid Cases", x = "Weather Type") + ggtitle("Confirmed Covid Cases in Queens Cleaned Data & Weather Type")

#create an object for the boxplot of the values in the Weather Type column (x-Values) and the Staten Island column (Y-Values) and change the theme to classic white background
staten_island <- ggplot(NYC4, aes(`Weather Type`, `Staten Island (Richmond)`)) + geom_boxplot()+theme_classic()

#view and add labels to boxplot
staten_island <- ggplot(NYC4, aes(`Weather Type`, `Staten Island (Richmond)`)) + geom_boxplot()+theme_classic()

#create an object for the anova table of the values in the Weather Type column (x-Values) and the Bronx column (Y-Values)
bronx_aov=aov(Bronx~`Weather Type`, data = NYC4)

#summary of the anova table
summary(bronx_aov)

#create an object for the anova table of the values in the Weather Type column (x-Values) and the Brooklyn (Kings) column (Y-Values)
brooklyn_aov=aov(`Brooklyn (Kings)`~`Weather Type`, data = NYC4)

#summary of the anova table
summary(brooklyn_aov)

#create an object for the anova table of the values in the Weather Type column (x-Values) and the Manhattan (New York) column (Y-Values)
manhattan_aov=aov(`Manhattan (New York)`~`Weather Type`, data = NYC4)

#summary of the anova table
summary(manhattan_aov)

#create an object for the anova table of the values in the Weather Type column (x-Values) and the Queens column (Y-Values)
queens_aov=aov(`Queens`~`Weather Type`, data = NYC4)

#summary of the anova table
summary(queens_aov)

#create an object for the anova table of the values in the Weather Type column (x-Values) and the Staten Island (Richmond) column (Y-Values)
statenisland_aov=aov(`Staten Island (Richmond)`~`Weather Type`, data = NYC4)

#summary of the anova table
summary(statenisland_aov)

#create a subset of the values in the Max-Temp column for temperatures less than 60 degrees F
cold <- subset(NYC4,`Max-Temp`<60)

#create a subset of the values in the Max-Temp column for temperatures greater than or equal to 60 degrees F
warm <- subset(NYC4, `Max-Temp`>=60)

#create a T-test of the values in the Bronx Column and the cold & warm subsets  
t.test(warm$Bronx, cold$Bronx)

#create a T-test of the values in the Brooklyn (Kings) Column and the cold & warm subsets  
t.test(warm$`Brooklyn (Kings)`, cold$`Brooklyn (Kings)`)

#create a T-test of the values in the Manhattan (New York) Column and the cold & warm subsets  
t.test(warm$`Manhattan (New York)`, cold$`Manhattan (New York)`)

#create a T-test of the values in the Queens Column and the cold & warm subsets  
t.test(warm$Queens, cold$Queens)

#create a T-test of the values in the Staten Island (Richmond) Column and the cold & warm subsets  
t.test(warm$`Staten Island (Richmond)`, cold$`Staten Island (Richmond)`)
