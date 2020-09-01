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

# setwd('/Users/maksdrzezdzon/Documents/Github/R')
# setwd('C:/Users/Grim/Documents/GitHub/R/data')

# page 205 -- cont with R course
# alt + shift + K

# dplyr overwrites some functions in R
# to use base funcs, you need to call them as shown below
stats::filter()
stats::lag()

# saves graph in pdf format and data in csv
ggplot(diamonds, aes(carat, price)) +
  geom_hex()
ggsave("diamonds.pdf")

write_csv(diamonds, "diamonds.csv")

# https://learning.oreilly.com/library/view/r-for-data/9781491910382/ch03.html
# do chapter 3 ex
df <- nycflights13::flights
?df
# filter(flights, month == 1, day == 1)
nov_dec <- filter(flights, month %in% c(11, 12))
two_hour_delay <- filter(nov_dec, dep_delay > 2)
# Arrived more than two hours late, but didn’t leave late
arrived_late <- filter(nov_dec, dep_time <= sched_dep_time, arr_delay >= 120)

two_hour_delay
