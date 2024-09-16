##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 1: Exercises
## University of Essex
## Author: Your name?
##-------------------------------------------------------------------------


# Task 1. Modify the author name above to your name ----------------------


# Task 2. Perform the following calculations by writing R commands --------


# 2-1: Multiply 4 by 30 plus 6, and then raise the answer to the power of 0.5

(4 * (30 + 6))^0.5

# The numeric answer to this question is 12, but what I need here is the
#  command, not the numeric answer itself. 

# Instead of doing everything at once, it is OK to do this step by step. 

# 1. Obtain "30 plus 6"

30 + 6

# 2. Multiple 4 by "30 + 6". Note that we need to enclose it with parentheses

4 * (30 + 6)

# 3. Raise the answer to the power of 0.5. Note that we need to enclose 4 * (30 + 6)
# with parentheses. 

( 4 * (30 + 6) )^0.5




# 2-2: Multiply 4 by 30 then add 6 and then raise the answer to the power of 0.5

(4 * 30 + 6)^0.5

# The numeric answer to this question is 11.22497, but what I need here is the
#  command, not the numeric answer itself. 



# Task 3. Working with objects --------------------------------------------

# 3-1: Create an object called "X1" which is the number 73

X1 <- 73


# 3-2: Create another object called "X2" which is the answer to the sum 99 + 38

X2 <- 99 + 38


# 3-3: Multiply X1 and X2 together and store the answer as another object called "X3"

X3 <- X1 * X2


# 3-4: Subtract 1 from X3, and then raise the answer to the power of 0.25

(X3 - 1)^0.25


# Note: the answer should be 10. 



# Task 4. Calculation using objects ---------------------------------------
# Redo the calculation in 2-1 (Multiply 4 by 30 plus 6, and then raise the 
# answer to the power of 0.5), but this time do so by creating objects. 
# Take the following steps


# 4-1: Create an object called part.1 that is equal to "30 plus 6"

part.1 <- 30 + 6


# 4-2: Create an object called part.2 that is equal to 4 times part.1

part.2 <- 4 * part.1


# 4-3: Raise part.2 to the power of 0.5

part.2^0.5


# Task 5. Detecting R data types ---------------------------------------------------


# 3-1 Create a character vector and show that it is character. It'd be nice if you can do it in one line of code

class(c("Hello World"))

# 3-2 Create a numeric vector and coerce it to a factor vector. It'd be nice if you can do it in one line of code

class(as.factor(c(1,2,3)))



# Task 6. Testing NA ---------------------

# 6-1 Create a numeric vector with NA 

c(1,2,3,NA)

# 6-2 Show me where the NA is located in the vector (using the which() function)

which(is.na(c(1,2,3,NA)))

# 6-1 Create a numeric vector with NaN  

c(1,2,3,NaN)

# 6-2 Show me where the NaN  is located in the vector (using the which() function)

which(is.nan(c(1,2,3,NaN)))

# End of file



