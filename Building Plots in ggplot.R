library(tidyverse)
library(ISLR) 
credit = as_tibble(Credit)
ggplot(credit, aes(x=Income,y=Balance)) +
  geom_point()

ggplot(credit) +
  geom_point(aes(x=Income,y=Balance,colour=Student)) +
  scale_colour_discrete() +
  labs(title="Balance vs Income ",
       x = "Income ($000)",
       y = "Balance ($)")

d = ggplot(mpg, aes(fl))
d = d + geom_bar()
d = d + coord_flip()
d

library(gapminder)
view(gapminder)
d = ggplot(gapminder, aes(x= lifeExp))
d = d + geom_histogram()
d

view(diamonds)
g = ggplot(diamonds, aes(cut,color))
g = g + geom_count()
g