library(tidyverse)
library(nycflights13)
view(airlines)
view(flights)
dim(airlines)
dim(flights)


delayed_flights = flights %>% 
  filter(dep_delay>0) %>% 
  group_by(carrier) %>% 
  summarise(num_delay=n()) %>% 
  left_join(airlines,by="carrier") %>% 
  filter(num_delay==max(num_delay))
delayed_flights

dim(delayed_flights)

view(airports)
dim(airports)



flights %>%
  group_by(dest) %>%
  summarise(mean_delay=mean(arr_delay, na.rm=TRUE)) %>%
  filter(mean_delay==min(mean_delay, na.rm=TRUE)) %>%
  left_join(airports,by=c("dest"="faa")) %>%
  
  
flights %>% 
  filter(origin=="JFK", dest=="SEA") %>% 
  summarise(avg_arr_time = mean(arr_time, na.rm = TRUE),
            min_arr_time = min(arr_time, na.rm = TRUE),
            max_arr_time = max(arr_time, na.rm = TRUE))


flights %>%
  mutate(speed = distance / arr_time * 60) %>% 
  group_by(dest) %>%
  summarise(avg_speed = mean(speed, na.rm = TRUE)) %>%
  arrange(desc(avg_speed)) %>%
  slice(1)

view(diamonds)
summary(diamonds)

diamonds %>% 
  group_by(cut) %>% 
  summarise(
    n = n(),
    corr_carat_price = cor(carat, price)
  ) %>% 

diamonds %>% 
  filter(cut =="Fair") %>% 
  ggplot(aes(x = carat, y = price)) +
  geom_point(alpha = 0.7)