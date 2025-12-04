library(tidyverse)
library(rvest)    #scraping web pages
library(stringr)  #string manipulation
library(tidyr)    #cleaning the scrab data
library(lubridate)  #date and time manipulation

url = "http://espn.go.com/nfl/superbowl/history/winners"
page = read_html(url)
page

sb_table = html_nodes(page, 'table')
sb = html_table(sb_table)[[1]]
sb
sb = sb[c(-1,-2),]
names(sb)=c("number","date","site","result")
sb= as_tibble(sb)
sb

sb= mutate(sb, number=1:nrow(sb)) #convert roman number to numeric
sb

sb= mutate(sb, date=mdy(date)). #converted to more format
sb 

sb=separate(sb,site,c("stadium","city",NA),sep='[()]')
sb

sb=separate(sb,result,c("winner","loser"),sep=', ')
sb


#//d+ = one or more digits, #$= end of the string
pattern = ' \\d+$'
sb=sb %>% 
  mutate(winnerscore=as.numeric(str_extract(winner,pattern))) %>%
  mutate(winner=gsub(pattern,"",winner))
sb

pattern= ' \\d+$'
sb=sb %>% 
  mutate(loserscore=as.numeric(str_extract(loser,pattern))) %>% 
  mutate(loser=gsub(pattern,"",loser))
sb

sb %>%
  mutate(margin_win = winnerscore - loserscore) %>%
  ggplot(aes(x = date, y = margin_win)) +
  geom_point(alpha = 0.7, size = 3)


