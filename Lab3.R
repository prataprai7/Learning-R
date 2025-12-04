x = c (1,2,3,4)
y = c("ram","shyam","sita","gita")
z= c (1,"ram",2,"shyam",3,4,"gita")
a= c (TRUE,2)
b=c(8,0,9,7)

typeof(x)

class(x)

class(a)
typeof(a)

x + b

people=c("Djokovic","federal","theiem","sinner","Kenin","halpl","Mugurue")
print(people)

people[-3]

number=c (10,20,30,40)
number[number>20]

even=seq(1,20,2)
print(even)

vowels=c("a","e","i","o","u")
print(voewls[1])
print(lenght(vowles))

shoe_sizes = c(5.5, 11, 7, 8, 4)
filter = c(TRUE, FALSE, FALSE, FALSE, TRUE)
print(shoe_sizes[filter])
shoe_is_small = (shoe_sizes<6)
print(shoe_is_small)
print(shoe_sizes[shoe_is_small])
print(shoe_sizes[shoe_sizes>6])


person = list(
  first_name = "Ada",
  job = "Programmer",
  salary = 100000,
  carparking_permit = TRUE
)
print(person)
names(person)
person$first_name
person$job

typeof(person)


x = person['salary']
print(x)


animals = list("Aardvark","Baboon","Camel")
print(animals)
animals[1]
animals[[1]]
is.list(animals)
is.list(animals[1])
is.list(animals[[1]])

{hw}

friend = c("sumeson", "bhakta", "shrestha")
print(friend)

life_details = list(
  name="pratap",
  age=24,
  gender="male",
  aim="good man",
  hobby="bouldering"
)
print(life_details)

nested_list = list(
  fathers_info=list(
    fathers_name="Bryan",
    age=45,
    job="mechanic"
  ),
  mothers_info=list(
    mothers_name="jenny",
    age=42,
    job="teacher"
  )
)
print(nested_list)

list_with_vector=list(
  name="ramu",
  marks=c(70,83,76,91),
  passed=TRUE
)
print(list_with_vector)