library(tidyverse)
x = c(3.5,7.8,10.3,14.7,15)
y = c(8.3,13.4,16.8,19,23.5)

model=lm(y~x)

y_hat= predict(model)
y_hat

R_squared = cor(y, y_hat)^2
R_squared

summary(model)