##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 2: Exercises
## University of Essex
## Author: Your name?
##-------------------------------------------------------------------------



# Task 1. if...else function ------------------------------------
# Mary and John's families (each family has 5 members) are going to a movie and have a hard time deciding who will sit where in a row with 10 seats. You decide to help them sort it out. Please let the Mary's sit in the number 1-5  and the John's in the number 6-10.
# Please use if...else function to complete the task.
seatNum = seq(1:10)

ifelse(seatNum>5, "John's", "Mary's")

# Task 1-2. You want two family members to know each other better so decide to mix them up. Please write a script to let one family to sit next to the other family members in a row. Again use the if..else function. 

seatNum = seq(1:10)

is.odd <- function(x) x%%2 != 0

is.even <- function(x) x%%2 == 0

# do this
ifelse(is.even(seatNum), "John's", "Mary's")

# or do this
ifelse(seatNum%%2 == 0, "John's", "Mary's")


# Task 2. loop ------------------------------------
# 2-1 We are now in the year of 2022. Please use for loop to print out all the years starting from 2012 to 2022. 
yrs = 2012:2022
for (year in yrs){
  print(year)
}

# 2-2: Please use paste() function to write a complete sentence like "The year is 2012". 

for (year in yrs){
  print(paste("This year is", year))
}

# 2-3: Turns out we don't really like 2020 and 2021 because Covid messed up many parts of our lives. Please don't print out these two years using the next function.

for (year in yrs){
  # checking condition
  if (year %in% c(2020, 2021)){
    # using next keyword
    next
  }
  print(paste("This year is", year))
}


# Task 3. functions ------------------------------------
# Please write a function that will always add 10 in addition to whatever number you put in.

mySum <- function(input_1) {
  output <- input_1 + 10
  return(output)
}

mySum(1000)

# Please write a function that will always identify a missing value in your vector. And please write a complete sentence to show where the missing value is located in the vector

anymiss <- function(x){
  miss <- any(is.na(x))
  if(miss){
    message("The following observations are missing:")
    print(paste("Position",which(is.na(x)), "out of the total length", length(x), "has a missing value." ))
  }
  # return(miss)
}

anymiss(c(1,1,11,NA,1))

# Finally, execute the entire contents of this R file by pressing
# Ctrl + A and then pressing Ctrl + Enter.
# Make sure that you don't get any error message. If you get an 
# error message, it's probably because you forgot to comment out 
# something. 

# End of file
