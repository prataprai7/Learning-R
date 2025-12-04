library(tidyverse)

mydata = read_csv("~/Desktop/R/data.csv")
mydata
ncol(mydata)
nrow(mydata)
dim(mydata)
colnames(mydata)
names(mydata)
rownames(mydata)
typeof(mydata)
class(mydata)

str(mydata)  #types of columns

lapply(mydata,class). #list format

summary(mydata$Weight)

a = mydata$Weight
typeof(a)

ggplot(mydata, aes(x=Age)) +
  geom_boxplot()


url = "https://raw.githubusercontent.com/fivethirtyeight/data/refs/heads/master/unisex-names/unisex_names_table.csv"
namesdata = read_csv(url)
namesdata
view(namesdata)
View(arrange(namesdata,gap))
