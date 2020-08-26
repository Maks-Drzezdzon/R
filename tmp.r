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

# plot
hist.day1 <- ggplot(df, aes(day1)) + 
  # remove legend
  theme(legend.position = "none") +
  # use density plot, color black and fill white
  geom_histogram(aes(y = ..density..), colour = "black", fill = "white") +
  # name x/y labels
  labs(x = "Hygiene score on day 1", y = "Density")
# render
hist.day1

# add curve
hist.day1 +
# The stat_function() command draws the normal curve using the function dnorm(). This
# function basically returns the probability (i.e., the density) for a given value from a normal
# distribution of known mean and standard deviation
stat_function(fun = dnorm, args = list(mean = mean(df$day1, na.rm = TRUE),
sd = sd(df$day1, na.rm = TRUE)),
colour = "black", size = 1)
