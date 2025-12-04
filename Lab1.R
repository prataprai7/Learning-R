print ("Hello world")

cat("Hello world")

x=10
y=5
x/y
x%%y

x%/%y

x<y

x==y

a=c(TRUE, FALSE, TRUE)
b=c(TRUE, TRUE, FALSE)

a&b

a[1]&&b[1]

# Fizzbuzz
for (i in 1:20)
{
  if (i%%15==0)
    cat("FIZZBUZZ ")
  else if (i%%3==0)
    cat("fizz ")
  else if (i%%5==0)
    cat("buzz ")
  else
    cat(i," ")
}

sum =0
for (i in 1:3){
  sum=sum+i^3
}
cat(sum)


sum=0
i=1
while(i <=10){
  sum= sum+i
  i=i+1
}
print(sum)


