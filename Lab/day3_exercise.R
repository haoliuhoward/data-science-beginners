##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 3: Individual Exercises
## University of Essex
## Author: Howard Liu
## Last modified: 12-01-2022
##-------------------------------------------------------------------------


# 1. Vectors --------------------------------------------------------------

# Create an object called "vec.a" which is a vector consisting of 
# the numbers, 1, 3, 5, 7. You need to use the c function. 

WRITE YOUR ANSWER (code) HERE

# Create a vector called "vec.b" consisting of the numbers, 2, 4, 6, 8.

WRITE YOUR ANSWER (code) HERE

# Subtract vec.b from vec.a

WRITE YOUR ANSWER (code) HERE

# Create a new vector called vec.c by multiplying vec.a by vector vec.b

WRITE YOUR ANSWER (code) HERE

# Create a new vector called vec.d by taking the square root of each 
# member of vec.c

WRITE YOUR ANSWER (code) HERE

# What is the third element of the vec.d vector? Find out using 
# square bracket. Note that since this is a vector, you only need to 
# provide a single number inside the brackets. 

WRITE YOUR ANSWER (code) HERE


# Create a new vector called vec.e consisting of all the integers 
# from 1 through 100. You should use the seq function, rather than writing 
# down all the 100 integers individually. 

WRITE YOUR ANSWER (code) HERE

# The mean function calculates the arithmetic mean of the numbers stored 
# in an object. Using the mean function, calculate the mean of the vec.e vector.

WRITE YOUR ANSWER (code) HERE

# As we saw in the joint exercise, the sum function calculates the sum of all 
# the elements in an object. Calculate the sum of the vec.e vector. 

WRITE YOUR ANSWER (code) HERE

# The length function returns the number of elements stored in an object. 
# Using the length function, find the number of elements stored in the vec.e
# vector. 

WRITE YOUR ANSWER (code) HERE

# The mean of an object can be obtained by sum(X)/length(X) because
# the defininition of the mean is the sum of elements divided by the number of 
# elements. Now, using the sum and length functions, calculate the mean of 
# the vec.e vector. Compare the answer with that obtained with the mean function

WRITE YOUR ANSWER (code) HERE


# We have learned that the by argument specifies an increment. For example, 

seq(from = 0, to = 10, by = 2)

# This creates a sequence that starts from 0 and ends with 10, and with 
# an increment of 2. 


# Now, create a new object called olympic which is a sequence that 
# starts from 1896 and ends with 2012, with an increment of 4. 

WRITE YOUR ANSWER (code) HERE

# How many elements does the olympic vector contain? That is, what is
# the length of this vector? Find out by applying a function (not by
# manually counting the number of elements). 

WRITE YOUR ANSWER (code) HERE


# So there are 30 elements in the olympic vector. Display all the 
# elements contained in the olympic vector. These are the years
# where olympic games were (supposed to be) held. Display the 
# contents of the olympic vector. 

WRITE YOUR ANSWER (code) HERE

# Find out how many olympic games will have been held by the year
# 2400. Use the length and seq functions. 

WRITE YOUR ANSWER (code) HERE


# 2. Matrices -------------------------------------------------------------

# Create a new vector called "v1" consisting of the following numbers:
# 1, 3, 5, 7, 9, 11

WRITE YOUR ANSWER (code) HERE

# Find out the length of this vector (Don't count the numbers by hand; 
# use an appropriate function). 

WRITE YOUR ANSWER (code) HERE


# We will conver this vector into a matrix. That is, we will rearrange this
# vector so that it will have two dimensions (rows and columns). 
# Since this vector has 6 numbers, if we want the matrix to have two 
# rows, how many columns will there be?

WRITE YOUR ANSWER AS A COMMENT.


# Create a matrix called mat.v using the following command: 
# matrix(data = v1, nrow = 2)

WRITE YOUR ANSWER (code) HERE

# Take a look at the contens of this matrix. 
# How many columns are there? 


# Notice how the numbers in vec.v are used to fill up the cells of mat.v.
# We can see that R did it "by column". That is, R first filled up the 
# first column of mat.v with the first two elements of vec.v, then moved
# on to the second and third columns. 


# You can use the byrow argument to change this. This argument takes 
# one of two values, TRUE or FALSE (or T or F). That is, we write
# matrix(data = v1, nrow = 2, byrow = TRUE)
# Now, create an object called mat.w using the command above. 

WRITE YOUR ANSWER (code) HERE


# Compare mat.v and mat.w. Do you see that R filled up the cells 
# "by row" to create the mat.w matrix ? 

# Many functions in R have arguments that take TRUE or FALSE like
# the byrow argument we just used. In most cases, functions have a 
# default value. In the case of the matrix function, the default 
# value for the byrow argument is FALSE, meaning that, if you don't
# specify anything, R will automatically sets byrow = FALSE. 



# Find the number in the second row, second column of mat.w

WRITE YOUR ANSWER (code) HERE


# Find the number in the second row, second column of mat.v

WRITE YOUR ANSWER (code) HERE




# 3. Lists ------------------------------------------------------

# Create a list of months (as the names of the elements) with how many days each month has as the elements in the list

WRITE YOUR ANSWER (code) HERE

# Display the number of days August has from the list 
WRITE YOUR ANSWER (code) HERE

# Convert the list to a vector
WRITE YOUR ANSWER (code) HERE


# 4. Apply functions --------------------------------------------

# Load R default data set mtcars 
WRITE YOUR ANSWER (code) HERE

# Use one of the apply functions to calculate the min value for each column/variable 
WRITE YOUR ANSWER (code) HERE

# Use one of the apply functions to indicate zero values in each column/variable 
WRITE YOUR ANSWER (code) HERE


# Finally, execute the entire contents of this R file by pressing
# Ctrl + A and then pressing Ctrl + Enter.
# Make sure that you don't get any error message. If you get an 
# error message, it's probably because you forgot to comment out 
# something. 

# End of file
