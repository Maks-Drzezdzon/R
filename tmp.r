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
library(nycflights13)

<<<<<<< HEAD
setwd('/Users/maksdrzezdzon/Documents/Github/R')
# setwd('C:/Users/Grim/Documents/GitHub/R/data')
=======
# setwd('/Users/maksdrzezdzon/Documents/Github/R/data')
setwd('C:/Users/Grim/Documents/GitHub/R/data')
# df <- read.delim("Chapter 5/DownloadFestival(No Outlier).dat", header=TRUE)
# print(df)
# page 205 -- cont with R course
# alt + shift + K
>>>>>>> b572bb4ff4ea5f12ee62f4358a3bf2585e87eef6

# dplyr overwrites some functions in R
# to use base funcs, you need to call them as shown below
stats::filter()
stats::lag()

# saves graph in pdf format and data in csv
ggplot(diamonds, aes(carat, price)) +
  geom_hex()
ggsave("diamonds.pdf")

write_csv(diamonds, "diamonds.csv")