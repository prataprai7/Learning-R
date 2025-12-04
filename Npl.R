library(tidyverse)
library(rvest)    
library(stringr) 
library(tidyr)   
library(lubridate)  
url="https://www.espn.com/cricket/table/series/23081/season/2025/nepal-premier-league"
page = read_html(url)
page

npl_table = html_nodes(page, 'table')
npl = html_table(npl_table)[[1]]
npl


names(npl)=c("team","result","match","win","lose","tie","nr","point","nrr","for","against")
npl= as_tibble(npl)
npl

npl=separate(npl,team,c("team","league"),sep='[()]')
npl


npl %>%
  mutate(margin_win = win - lose) %>%
  ggplot(aes(x = team, y = margin_win)) +
  geom_point(alpha = 0.7, size = 3)