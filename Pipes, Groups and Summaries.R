library(tidyverse)
install.packages("gapminder") #run only once

library(gapminder)
view(gapminder)
dim(gapminder)
colnames(gapminder)
summary(gapminder)
str(gapminder)
gapminder$country
select(gapminder, country)
pull(gapminder,country)
filter(gapminder, country=="Nepal")

ggplot(gapminder, aes(x=gdpPercap, y=lifeExp))+
  geom_point(aes(colour = continent))+
scale_x_log10()
options(scipen=1000)

cor(gapminder$gdpPercap, gapminder$lifeExp)


A = filter(gapminder, continent=="Europe", year==2007)
B = select(A,-continent,-year)
ggplot(B,aes(x=gdpPercap,y=lifeExp, size=pop)) +
  geom_point(alpha=0.7)
view(A)

ggplot(select(filter(gapminder, continent+="Europe", year==2007),
              -contintent,-year),aes(x=gdpPercap, y=lifeExp, size=pop)) +
  geom_point(alpha=0.7)

#pipes

gapminder %>%
  filter(continent=="Europe", year==2007) %>% 
  select(-continent,-year) %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp, size=pop)) +
  geom_point(alpha=0.7)


# Groups and summaries
gapminder %>%
  filter(year==1952) %>%
  summarise(num_countries=n_distinct(country),
            mean_pop=mean(pop))

gapminder %>% 
  group_by(year) %>% 
  summarise(num_countries=n_distinct(country),
            mean_pop=mean(pop))

gapminder %>%
  group_by(continent) %>%
  summarise(num_countries=n_distinct(country),
            mean_pop=mean(pop)) %>%
  ggplot(aes(x=year,y=mean_pop)) +
  geom_line()
options(scipen=1000)



