library(tidyverse)
name = c("Nadal","Djokovic","Federer","Medvedev","Theim",
         "Tsitsipas","Zverev","Berrettini","Bautista Agut","Monfils",
         "Barty","Pliskova","Halep","Osaka","Svitolina","Andreescu","Bencic","Kvitova","Williams","Bertens")
rank = c(1:10,1:10)
age = c(33,32,38,23,26,21,22,23,31,33,
        23,27,28,22,25,19,22,29,38,28)
height = c(1.85,1.88,1.85,1.98,1.85,1.93,1.98,1.96,1.83,1.93,
           1.66,1.86,1.68,1.80,1.74,1.70,1.75,1.82,1.75,1.82)
weight = c(85,77,85,83,79,89,90,95,75,85,
           62,72,60,69,60,60,63,68,72,74)
gender = c(rep("M",10),rep("F",10))
tennis = tibble(name,rank,age,height,weight)
print(tennis)
typeof(tennis)
names(tennis)
colnames(tennis)
class(tennis) #even tho tennis looks like a table it is actually stored as a list of equall length vectors
is.list(tennis)
is.data.frame(tennis)


tennis = tribble(
  ~name, ~rank, ~age, ~height, ~weight, ~gender,
  #--------------|---|---|----|---|----|
  "Nadal", 1, 33, 1.85, 85, "M",
  "Djokovic", 2, 32, 1.88, 77, "M",
  "Federer", 3, 38, 1.85, 85, "M",
  "Medvedev", 4, 23, 1.98, 83, "M",
  "Theim", 5, 26, 1.85, 79, "M",
  "Tsitsipas", 6, 21, 1.93, 89, "M",
  "Zverev", 7, 22, 1.98, 90, "M",
  "Berrettini", 8, 23, 1.96, 95, "M",
  "Bautista Agut", 9, 31, 1.83, 75, "M",
  "Monfils", 10, 33, 1.93, 85, "M",
  "Barty", 1, 23, 1.66, 62, "F",
  "Pliskova", 2, 27, 1.86, 72, "F",
  "Halep", 3, 28, 1.68, 60, "F",
  "Osaka", 4, 22, 1.80, 69, "F",
  "Svitolina", 5, 25, 1.74, 60, "F",
  "Andreescu", 6, 19, 1.70, 60, "F",
  "Bencic", 7, 22, 1.75, 63, "F",
  "Kvitova", 8, 29, 1.82, 68, "F",
  "Williams", 9, 38, 1.75, 72, "F",
  "Bertens", 10, 28, 1.82, 74, "F"
)
print(tennis)
is.list(tennis)
is.data.frame(tennis)
nrow(tennis)
ncol(tennis)
colnames(tennis)
summary(tennis)
View(tennis) # with capital V
dim(tennis)
a = tennis$height
print(a)
class(a)
summary(a)
tennis[1,"name"]
tennis[1,"age"]
tennis[2,]
tennis[,"height"]
tennis$height
summary(height)

ggplot(tennis, aes(x=gender, y=age)) +
  geom_boxplot()

tennis$age