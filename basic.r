# TUTORIAlS 
a <- 1 
b <- 2
c <- -1
a
[1] 1
b
[1] 2
c
[1] -1
print (a)
[1] 1
ls ()
[1] "a" "b" "c"
help ("log") #getting help in R 
data () #this shows all the default or inbuilt dataset in R
#Once the dataset has been loading, just type the name of the dataset below the "data ()" function and it will be loaded. 

#TYPES OF DATA
#For instance:
a <- 1
class(a)
#The most common ways of storing data in R is using dataframes (they are like tables)
library(dslabs)
data("murders")
class(murders)
[1] "data.frame"
#To find out more about an object or you want to know the structure, you use the "str" function which stands for structure.
str(murders)
#To show the first six data in a table you use the "head" function
head(murders)
#For our analysis, we will need to access the different variables represented by columns. To access these variables, we use the dollar sign symbol.It's called the accessor.
murders$population
#We can also get the names of the columns using the names function.
names(murders) #tells us the five names of the five columns.
