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

#VECTORS
#Complex datasets can usually be broken down into components that are vectors. One way we can do that is by using the function c, which stands for concatenate.
codes <- c(124, 466, 387)
#Sometimes it's useful to name the entries of a vector. For example, when defining a vector of country codes as we did, we can use the names to connect the two. So here we would type codes, then use concatenate. But this time, instead of just writing out the three numbers, we would assign a name to each one.
codes <- c(italy=124, canada=466, nigeria=387)
#another useful function for creating vectors, and we use this often, is a function that generates sequences. The function is seq, stands for sequence.
seq(1,10)
#In this function, the first argument defines the start, and the second defines the end. The default is to go in increments of 1. But a third argument, which defaults to 1, lets us tell seq how much to jump by. So for example, if I type seq(1, 10, 2), it would write out the odd numbers from 1 to 9.
#subsetting, an important topic. It lets us access specific parts of a vector. We use square brackets to access elements of a vector.
codes[2]
#You can get more than one entry by using a multi-entry vector as an index. So we can type codes, and then create the vector 1, 3.
codes[c(1,3)]

#SORTING
#The function sort, sorts a vector in increasing order.
library(dslabs)
data("murders")
sort(murders$total)
#The function order is closer to what we want. It takes a vector and returns the indices that sorts that vector.This may sound confusing, so let's look at a simple example.
Consider this very simple vector of five numbers--
x <- c(31, 4, 15, 92, 65)
x
sort(x)
4, 15, 31, 65, 92.
