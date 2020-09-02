library(gapminder)
library(dplyr)

# %>% is like a pipe in linux 
gapminder <- gapminder::gapminder
gapminder %>% filter(year == 2007, country == "United States")
gapminder %>% arrange(gdpPercap)


