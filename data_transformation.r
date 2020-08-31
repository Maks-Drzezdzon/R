library(tidyverse)
library(nycflights13)

setwd('/Users/maksdrzezdzon/Documents/Github/R')
# setwd('C:/Users/Grim/Documents/GitHub/R/data')

# Pick observations by their values filter()
# Reorder the rows arrange()
# Pick variables by their names select()
# Create new variables with functions of existing variables(mutate())
# Collapse many values down to a single summary summarize()

flights <- nycflights13::flights
flights
filter(flights )
