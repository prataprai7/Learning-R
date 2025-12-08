library(tidyverse)

install.packages("titanic")
library(titanic)
data(package="titanic")
titanic = as_tibble(titanic_train)
view(titanic)

colnames(titanic)
str(titanic)

titanic = select(titanic,Survived,Pclass,Name,Gender=Sex,Age,Fare)
titanic
summary(titanic)

titanic$Survived = as_factor(titanic$Survived)
titanic$Pclass = as_factor(titanic$Pclass)
titanic
summary(titanic)

library(GGally)
ggscatmat(titanic)

# Survived by Gender
ggplot(titanic, aes(x=Gender)) +
  geom_bar(aes(fill=Survived))

# Survived by Pclass
ggplot(titanic, aes(x=Pclass)) +
  geom_bar(aes(fill=Survived))


# Survived by Gender and Pclass
ggplot(titanic, aes(x=Gender)) +
  geom_bar(aes(fill=Survived)) +
  facet_wrap(~Pclass)


# Survived by Age and Gender (beware colours)
ggplot(titanic, aes(x=Age)) +
  geom_histogram(aes(fill=Survived),binwidth=5) +
  facet_wrap(~Gender)

