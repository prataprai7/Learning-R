library(tidyverse)
x = anscombe[,1]
y = anscombe[,5]
summary(x)
sd(x)
summary(y)
sd(y)
cor(x,y)

ggplot(NULL, aes(x=x,y=y))+
  geom_point()


x = anscombe[,2]
y = anscombe[,6]

cor(x,y)
ggplot(NULL, aes(x=x,y=y))+
  geom_point()

x = anscombe[,3]
y = anscombe[,7]

cor(x,y)
ggplot(NULL, aes(x=x,y=y))+
  geom_point()


x = anscombe[,4]
y = anscombe[,8]

cor(x,y)
ggplot(NULL, aes(x=x,y=y))+
  geom_point()

x = anscombe[-3,2]
y = anscombe[-3,6]
cor(x,y)
ggplot(NULL, aes(x=x,y=y))+
  geom_point()

library(gapminder)
ggplot(gapminder, aes(x=gdpPercap, y=lifeExp))+
  geom_point(aes(colour = continent))
gapminder %>% 
  filter(year==2007) %>% 
  group_by(continent) %>% 
  summarise(num_countries=n_distinct(country),r=cor(gdpPercap,lifeExp))


install.packages("ISLR")
library(ISLR)
data(package="ISLR")
credit = as_tibble(Credit)
view(credit)
dim(credit)
str(credit)
credit = select(credit,Balance,Limit,Income)
summary(credit)

ggplot(credit, aes(x=Balance, y=Limit)) +
  geom_point()
cor(credit$Balance,credit$Limit)

install.packages("GGally")
library(GGally)
ggscatmat(select(credit,Balance,Limit,Income))

library(gapminder)
View(gapminder)
library(dplyr)
ggscatmat(select(gapminder,lifeExp,pop,gdpPercap))

