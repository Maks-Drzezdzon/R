#TU059/TU060 Probability and Statistical Inference
#R Script for Week 1

#First check that package required is installed, if not install it
needed_packages <- c("carData")                                        # Specify your packages
not_installed <- needed_packages[!(needed_packages %in% installed.packages()[ , "Package"])]    # Extract not installed packages
if(length(not_installed)) install.packages(not_installed)                               # Install not installed packages

#load the package to make it available to use
library(carData)

#load the dataset Salaries (part of carData) into a dataframe
salaryData<-Salaries

salaryData
#display the names of the variables/features in the dataset
colnames(salaryData)
#display the number of rows/records/cases in the dataset
nrow(salaryData)

#look at the value of a variable
salaryData$sex
# or the associated description
str(salaryData$sex)

#You get a relevant statistical summary for a variable e.g. gender
summary(salaryData$sex)

#Or for salary
summary (salaryData$salary)

#Or get a summary of all the variables in the dataset
summary(salaryData)

#----CENTRAL TENDENCY ----
#Mean
mean(salaryData$salary)
#You can assign the outcome to a variable
meansal <- mean(salaryData$salary)
#and then display it on screen
meansal
#Or use the print function to make it look the way you want
print(meansal, digits=1)

#Median
median(salaryData$salary)

#---DISPERSION ---
#Range
range(salaryData$salary)
#Quantiles
quantile(salaryData$salary)
#to get 1st quantile
x=quantile(salaryData$salary); x[1] 
#Interquartile Range
IQR(salaryData$salary)
#Variance
var(salaryData$salary)
#Standard deviation
sd(salaryData$salary)
#Rounded
round(sd(salaryData$salary,2)) #rounded to 2 decimal places

