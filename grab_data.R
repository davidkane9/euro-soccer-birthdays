library(tidyverse)
library(rvest)

x <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")

raw_data <- x %>% 
  html_elements("td:nth-child(4)") %>% 
  html_text2() %>% 
  as_tibble()

write_csv(raw_data, "birthdates.csv")
  
