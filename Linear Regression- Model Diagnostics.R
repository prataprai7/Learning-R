library(tidyverse)

install.packages("datarium")

data("marketing", package="datarium")
marketing = as_tibble(marketing)

view(marketing)
dim(marketing)

# Model is sales = a + b*youtube
model = lm(sales~youtube, data=marketing)
summary(model)


options(scipen = 1000)

library(broom)
fitted= augment(model)
fitted

ggplot(fitted, aes(x=.fitted,y=.resid)) +
  geom_point() +
  geom_hline(yintercept=0)

install.packages("ggfortify") # run only once
library(ggfortify)
model = lm(sales~youtube,data=marketing)
autoplot(model)

model = lm(sales~youtube+facebook,data=marketing)
autoplot(model)

modelA = lm(sales~youtube,data=marketing)
summary(modelA)

modelB = lm(sales~youtube+facebook,data=marketing)
summary(modelB)

modelC = lm(sales~facebook,data=marketing)
summary(modelC)
modelD = lm(sales~newspaper,data=marketing)
summary(modelD)

modelD = lm(sales~youtube+facebook+newspaper,data=marketing)
summary(modelD)