library(gapminder)
library(dplyr)

# %>% is like a pipe in linux 
# https://campus.datacamp.com/courses/introduction-to-the-tidyverse/data-wrangling-1?ex=7
gapminder <- gapminder::gapminder
gapminder %>% filter(year == 2007, country == "United States")
gapminder %>% arrange(gdpPercap)


