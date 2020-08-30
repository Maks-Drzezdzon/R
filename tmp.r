a <- 1
print(a)
b <- 1:10
print(b)
frame <- data.frame(a,b)
print(frame)
library(car)
library(pastecs)
library(psych)
library(Rcmdr)
# tidyverse has most needed libs
library(tidyverse)


# setwd('/Users/maksdrzezdzon/Documents/Github/R/data')
setwd('C:/Users/Grim/Documents/GitHub/R/data')

df <- read.delim("Chapter 5/DownloadFestival(No Outlier).dat", header=TRUE)
print(df)


# page 205 -- cont with R course
