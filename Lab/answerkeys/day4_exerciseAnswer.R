##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 4: Individual Exercise
## University of Essex
## Author: Howard Liu
##-------------------------------------------------------------------------

# clean up your workspace 
rm(list=ls(all=TRUE)) # remove all the named objects visible in the environment 
cat("\014") # clean your console

library(tidyverse)

# 1. Let's do more exercises with dplyr (with a different dataset) -----------------------

# Please download the nycflights13 data by installing this package called "nycflights13"
install.packages("nycflights13")
library("nycflights13")

# 1-1: Please find all March flights in the data
flights %>% filter(month == 3)

# 1-2: Create a new variable as date with a format like this 1/1/2013, using the mutate() function

flights %>% select(1:3) %>% mutate(date = paste(month,day,year,sep="/") )

# 1-3: Change column name tailnum to tail_number
flights %>% rename(tail_number = tailnum)

# 1-4: Group flights by their origins
flights %>% group_by(origin)

# 1-5: Count how many flights departing from JFK on 2013-12-31?
flights %>% filter(origin == "JFK" & year == 2013 & month ==12 & day ==31) %>% nrow()
# 283

# 1-6: Calculate the average hours of delay in departure for all flights from JFK
View(flights)

flights$origin %>% table # only has three departing airports

# way 1
flights %>% 
  group_by(origin) %>% 
  summarise(avg_delay_JFK = mean(dep_delay, na.rm = T)) # In this way, we simply calculate average hours of delay in departure for all flights from all three origins (EWR, JFK, LGA), and we get the number from JFK as well

# A tibble: 3 × 2
# origin avg_delay_JFK
# <chr>          <dbl>
# 1 EWR             15.1
# 2 JFK             12.1
# 3 LGA             10.3

# way 2
flights %>% 
  filter(origin == "JFK") %>% # we only pick rows with origin == JFK
  select(dep_delay) %>% # pick the variable we want to calculate
  .[!is.na(.)] %>% # remove na values
  mean # calculate the mean

# [1] 12.11216



# Finally, execute the entire contents of this R file by pressing
# Ctrl + A and then pressing Ctrl + Enter.
# Make sure that you don't get any error message. If you get an 
# error message, it's probably because you forgot to comment out 
# something. 

# End of file
