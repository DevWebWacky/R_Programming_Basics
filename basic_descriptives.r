# TUTORIAlS
# LESSON 1 (R Basics: Variables, Data Types, and Operations)

# VARIABLES: A variable is a name that stores data. You use <- to assign a value to your variable
# Examples:
# x <- 5 this stores the number 5 in the variable x
# y <- 10 this stores the number 10 in the variable y

#BASIC MATH OPERATIONS
# x + y addition
# y - x substraction
# x * y multiplication
# x^2 exponent

# DATA TYPES
# Numeric (numbers), Integer (whole numbers), Character (Texts), Logical (TRUE or FALSE)

# VECTORS: This is a list of values of the same type. You create them using c()
# Examples:
# numbers <- c(2, 4, 6, 8, 10)
# names <- c("Uwakmfon", "Usen", "Paul")
# flags <- c(TRUE, FALSE, TRUE)
# You can do maths on numeric vectors:
# sum(numbers)
# mean(numbers)
# length(numbers)

#INDEXING/ACCESSING ElEMENTS: You can pick an element from a vector using square brackets.
# number[1] first element
# numbers[3:5] elements 3 to 5
# numbers[c(1,5)] elements 1 and 5

numbers <- c(2, 4, 6, 8, 10)
sum(numbers)
mean(numbers)
numbers[1]
numbers[1:3]
numbers[c(1,4)]

#DATA FRAMES: Data frame is like a jamovi dataset table. If you have loaded a dataset onto your jamovi, you can just access it by typing the  dataset name in Rj editor
ToothGrowth#loads the dataset
head(ToothGrowth) #shows first 6 rows
#Access a column (variable) using $
ToothGrowth$len
ToothGrowth$supp
#Summary of Data
summary(ToothGrowth)

#DESCRIPTIVES IN R (MEAN, MEDIAN, MIN, MAX)
#store the column you want to analyzee
tooth_lengths <- ToothGrowth$len
#calculate basic stats:
mean(tooth_lengths)
median(tooth_lengths)
min(tooth_lengths)
max(tooth_lengths)
sd(tooth_lengths)
var(tooth_lengths)
range(tooth_lengths)
IQR(tooth_lengths)
#Frequencies for Categorical Variables
table(ToothGrowth$supp)
prop.table(table(ToothGrowth$supp))

#Histogram
hist(tooth_lengths, main="Histogram of Tooth Lengths", xlab="Length", col="green")

#RUNNING MY OWN DATA
mydata <- jmv::jmvread("C:/Users/mac/Desktop/EBF Documents/NewEBF cleaned.omv")
head(mydata)
summary(mydata)
names(mydata)
