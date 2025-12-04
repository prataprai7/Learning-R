library(tidyverse)

install.packages("nycflights13") # run only once
library(nycflights13)
data(package = "nycflights13")
view(airlines)
view(airports)
view(flights)
view(weather)
view(planes)

dim(flights)
str(flights)
lapply(flights, class)

select(flights, year, month, day)
select(flights, year:day)

select(flights, -year)
select(flights, -(year:day))

select(flights, starts_with("sched"))
select(flights, ends_with("delay"))
select(flights, contains("arr"))
select(flights, last_col())

select(flights, matches(".*_.*_.*"))    # regular expression matching

dim(distinct(flights))
distinct(select(flights, month, day))
distinct(flights, month, day) # does the same as line above

sat = pull(flights,sched_arr_time)
sat
class(sat)

xy=flights$sched_arr_time
print(xy)
summary(xy)
summary(sat)


rename(flights, destination=dest, tail_num=tailnum)
flights1 = rename(flights, destination=dest, tail_num=tailnum)
view(flights1)
dim(flights1)

#mutate adds new columns in the existing columns
flights1 = mutate(flights1, gain=arr_delay-dep_delay, speed=distance/(air_time/60))


#transmute shows only new columns
flights2=transmute(flights, gain=arr_delay-dep_delay, gain_per_hour=gain /(air_time/60))
view(flights2)
dim(flights2)

slice(flights, 87:96) # particular 10 rows
top_n(flights, 20, arr_delay)
a = top_n(flights, 20)
view(a)

filter(flights, month==1, day==1)


set.seed(123)
sample(1:10, 5)
sample_n(flights, 20)

0.001*nrow(flights) # how many rows expected if 0.1% of the rows
sample_frac(flights, 0.001)

arrange(flights, year, month, day)
arrange(flights, desc(arr_delay)) # descending order

filter(flights, dep_time == 2400 | dep_time== 600)
filter(flights, arr_delay >= 120)
filter(flights, dest=="IAH" | dest=="HOU")
filter(flights, arr_delay > 120, dep_delay <= 0)
filter(flights, dep_delay >= 60, arr_delay <= dep_delay - 30)
