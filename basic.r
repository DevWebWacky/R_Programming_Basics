#DATA ANALYTICS 
#dplyr can convert your regular data frame to a table
library(dplyr)
#To load dataset into R and also assign it to a variable
example <- read.csv("/Users/mac/Desktop/New CleanedEBF Data.csv")
#To view the dataset
View(example)

#Simple Commands:
#head: shows the first few rows
#tail: shows the last few rows
#dim: shows number of rows and columns
#names: returns the column names
#glimpse: shows the structure of the dataset

head(example)
tail(example)
dim(example)
names(example)
glimpse(example)

#Descriptives
#To see the values for a particular variable:
example$variablename
example$INCOME

#Get unique values for a variable
unique(example$INCOME)
length(unque(example$INCOME))

#Calculating Mean, Median, Range
mean(example$variableName)
median(example$variableName)
range(example$variableName)

#Examples
mean(example$AGE)

#To get summary of all the dataset
summary(example)

#To check missing variables
is.na(example)
sum(is.na(example)) #Tells you the number of missing variables
example[is.na(example)]<-0 #this command will replace all NA variables with 0, however, you can use whatever value you like.

#EXPLORATORY DATA ANALYSIS AND VISUALISATION
library(ggplot2)
ggplot(example, aes(AGE_GROUP)) + geom_histogram(bins = 30)
ggplot(example, aes(MARITAL.STATUS, EDUCATIONAL.LEVEL, col=AGE_GROUP)) + geom_point()

#T-TEST
examplea <- filter(example, variable>=18)
view(examplea)
t.test(person_age~sex, data=examplea) #It has to be 2 levels before you can perform T-test.
#You can run the t-test like that without assigning it.

#Linear Regression
#Print the full model statistics
summary(fit)
fit <- lm(variable~variable2, data=examplea)
summary(fit)
ggplot(examplea aes(x=variable, y=variable)) + geom_point() + geom_smooth(method="lm")
