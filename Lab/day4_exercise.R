##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 4: Individual Exercise
## University of Essex
## Author: Howard Liu
##-------------------------------------------------------------------------

# clean up your workspace 
rm(list=ls(all=TRUE)) # remove all the named objects visible in the environment 
cat("\014") # clean your console


# 1. Let's do more exercises with dplyr (with a different dataset) -----------------------

# Please download the nycflights13 data by installing this package called "nycflights13"
install.packages("nycflights13")
library("nycflights13")

# 1-1: Please find all March flights in the data (the dataset is named "flights")
flights

# WRITE YOUR ANSWER (code) HERE

# 1-2 :Create a new variable as date with a format like this 1/1/2013, using the mutate() function

# WRITE YOUR ANSWER (code) HERE

# 1-3: Change column name tailnum to tail_number

# WRITE YOUR ANSWER (code) HERE

# 1-4: Group flights by their origins

# WRITE YOUR ANSWER (code) HERE

# 1-5: Count how many flights departing from JFK on 2013-12-31?

# WRITE YOUR ANSWER (code) HERE

# 1-6: Calculate the average hours of delay in departure for all flights from JFK

# WRITE YOUR ANSWER (code) HERE

# Finally, execute the entire contents of this R file by pressing
# Ctrl + A and then pressing Ctrl + Enter.
# Make sure that you don't get any error message. If you get an 
# error message, it's probably because you forgot to comment out 
# something. 

# End of file

