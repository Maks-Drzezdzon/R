a <- 1
print(a)
b <- 1:10
print(b)
frame <- data.frame(a,b)
print(frame)
library(car)
library(ggplot2)
library(pastecs)
library(psych)
library(Rcmdr)

# setwd('/Users/maksdrzezdzon/Documents/Github/R/data')
setwd('C:/Users/Grim/Documents/GitHub/R/data')

df <- read.delim("Chapter 5/DownloadFestival(No Outlier).dat", header=TRUE)
print(df)

hist.day1 <- ggplot(df, aes(day1)) + theme(legend.position = "none") +
  geom_histogram(aes(y = ..density..), colour = "black", fill = "white") +
  labs(x = "Hygiene score on day 1", y = "Density")
hist.day1