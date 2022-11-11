##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 3
## University of Essex
## Author: Howard Liu
## Last modified: 12-01-2022
##-------------------------------------------------------------------------


# clean up your workspace 
rm(list=ls(all=TRUE)) # remove all the named objects visible in the environment 
cat("\014") # clean your console


# Things we will learn today:  -----------------------------------------------------
# Today we continue to learn some fundamentals in R language 
# 1. Vector
# 2. Matrix
# 3. List
# 4. the apply functions (why sometimes it makes things faster than loops)



# 1. Creating a Vector --------------------------------------------------------------

# So far we have worked with single numbers. For example, we have seen how to
# multiply a single number 3 by another single number 23. (i.e., 3 * 23). 

# In statistical analysis, we will be working with *sequences* and *tables* of 
# numbers rather than single numbers. They are called vectors and matrices. 

# A vector is nothing but a collection of numbers.
# Vectors do not have to be sequential or ordered. 

# The easiest way to create a vector is to use the c function. 
# (short for concatenate or combine). 

c(2, -1, 0, 9)

# The above is a vector that binds together four numbers, 2, -1, 0, 9.
# We can also store this vector into an object.

vec.1 <- c(2, -1, 0, 9)

vec.1



# Another way to create a vector is to use the seq function
# (short for sequence). As the name implies, this function 
# creates a sequence from one number to another. It takes 
# at least two arguments, from and to

seq(from = 0, to = 10)

seq(from = 5, to = 1)

# There are some additional arguments you may provide, "by" or "length".

# The "by" arguments specifies the increments. 

# For example, if we specify "by = 0.5", R will create a sequence with an 
# increment of 0.5.

seq(from = 0, to = 5, by = 0.5)


# The "length" arguments determines the number of elements of the resulting
# sequence. For example, if we specify "length = 10", R will create a sequence
# that has 10 elements (numbers).

seq(from = 0, to = 2, length = 10)


# For obvious reasons, we cannot use "by" and "length" simultaneously. 

seq(from = 0, to = 5, by = 0.5, length = 10)


# When we just want to create a simple sequence with an increment of 1, 
# we can use the : operator instead.

1:10

# This is the same as

seq(from = 1, to = 10)



# Vector operations

# Let's create several vectors and perform some operations
# on them. 

x.vec <- seq(from = 2, to = 6)
y.vec <- c(3, 0, 1, -2, 4.3)

x.vec
y.vec


# We can do arithmetic operations with vectors. For example

x.vec

x.vec + 3

# adds three to every number in the vector.

y.vec

y.vec * -2

# multiplies every number in the vector by minus 2.

# Since the number of elements is the same for x.vec and y.vec, we can 
# do arithmetic operations with them. 

x.vec
y.vec

x.vec + y.vec

# Notice that the first number (5.0) in the output is the sum of 
# the first number in x.vec (2) and the first number in y.vec (3.0), 
# the second number (3.0) in the output is the sum of the second numbers 
# of x.vec and y.vec, and so on. 

x.vec * y.vec

y.vec / x.vec


# Functions work on vectors as well. 

x.vec

sqrt(x.vec)

# What would happen if we try to combine two vectors of different length? 
# It turns out that R will still work, but the output may not be what 
# you'd expect. Moreover, R gives you a warning. 

z.vec <- c(1,2,3)
x.vec
x.vec + z.vec

# Here, the ``x.vec`` is of length 5, whereas the ``z.vec`` is of length 3. 
# R is warning you that the longer object length (5) is not a multiple of 
# shorter object length (3). 




# 2. Creating a Matrix ----------------------------------------------------

# When we have a collection of numbers that are arranged in two dimensions
# rather than one, we say we have a matrix. We can create one using the 
# matrix function.

mat.1 <- matrix(data = seq(from = 1, to = 12), nrow = 3, ncol = 4)

mat.1

# Let's see what the code above does. 

# The first argument "data = ..." specifies the contents (numbers) that 
# are stored in the matrix called mat.1. In this particular case, we tell R
# to create a sequence of numbers from 1 to 12 (1,2,3,4,...,11,12). 

# The second argument "nrow = ..." specifies the number of rows. 
# The third argument "ncol = ..." specifies the number of columns. 

# Obviously, if you specify nrow, you don't really need to specify ncol because
# it's implied (since we have 12 elements, nrow = 3 implies that ncol is 4).


# When using functions that take multiple arguments like this, it is advisable
# that you provide arguments in separate lines, as follows

# Select the following four lines and execute them

mat.1 <- matrix(data = seq(from = 1, to = 12), 
                nrow = 3, 
                ncol = 4)
mat.1

# This is to improve readability of your code. Readers can easily see that 
# you are providing nrow and ncol as arguments for the matrix function, not for
# the seq function.


# Notice that a matrix is nothing but a collection of vectors (and a vector
# is nothing but a collection of numbers). In other words, we can break down
# any matrices into vectors. 

# Let's take a look at the mat.1 matrix again

mat.1

# There are two ways to break down this matrix. 
# First, we can think of this matrix as being made up with three **row vectors**. 
# The first row vector is ``1 4 7 10``, the second is ``2 5 8 11``, and the 
# third is ``3 6 9 12``. 

# To extract (row or column) vectors, we use **square brackets []**. 
# For example, to extract the second row vector, we write

mat.1[2, ]

# Notice that we need to put a **comma (,)** after the number 2. 
# This is to tell R that you want the 2nd column, not the 2nd element 
# of a matrix. 


# The second way to break down this matrix is to think of this as being 
# made up with four **column vectors**. 
# The first column vector is ``1 2 3``, the second is ``4 5 6``, 
# the third is ``7 8 9``, and the fourth is ``10 11 12``. 
# To extract column vectors from a matrix, we also use **square brackets []**,
# but need to put a number **after a comma**. 

# For example, to extract the third column vector, we write.

mat.1[ , 3]

# We can extract a cell entry (single number) by combining these two techniques
# that we just learned. That is, to extract the element stored in the i-th row, 
# j-th column, we write [i, j]. For example, to find out the number in the 
# 3rd row, 4th column, we write

mat.1[3, 4]


# If we don't specify any row or column numbers inside the square brackets, 
# R returns the entire matrix.

mat.1[ , ]

mat.1[]

# We can also specify multiple rows and/or columns at the same time.

mat.1[, c(2,3)]  # This gives us the second and the third columns

mat.1[1:2, ]  # This gives us the first and the second rows.

# We can transpose a matrix 
t(mat.1)

# Instead of using the matrix function, we can create a matrix by combining 
# multiple vectors. Recall that we have created two vectors, x.vec and y.vec
# above. We can create new matrices by binding these two together. 

# The rbind function binds multiple vectors, treating them as row vectors. 

rbind(x.vec, y.vec)

# Similarly, the cbind function binds multiple vectors treating them as column
# vectors. 

cbind(x.vec, y.vec)



# 3. Creating a List ------------------------------------------------

# Lists are the R objects which contain elements of different types like − numbers, strings, vectors and another list inside it. A list can also contain a matrix or a function as its elements. List is created using list() function.


# 3-1 Creating a List
# Following is an example to create a list containing strings, numbers, vectors and a logical values.

# Create a list containing strings, numbers, vectors and a logical
# values.
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
list_data

# Naming List Elements
# The list elements can be given names and they can be accessed using these names.

# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))
list_data

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.
print(list_data)


# 3-2: Accessing List Elements
# Elements of the list can be accessed by the index of the element in the list. In case of named lists it can also be accessed using the names.

# Let's us the previous example list
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Access the first element of the list.
list_data[1]

# Extract the values from within the first element
list_data[1][[1]]

# Access the third element. As it is also a list, all its elements will be printed.
list_data[3]
list_data[[3]]

# Access the list element using the name of the element.
list_data$A_Matrix


# 3-3: Merging Lists
# You can merge many lists into one list by placing all the lists inside one list() function.

# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)

merged.list


# 3-4: Converting List to Vector
# A list can be converted to a vector so that the elements of the vector can be used for further manipulation. All the arithmetic operations on vectors can be applied after the list is converted into vectors. To do this conversion, we use the unlist() function. It takes the list as input and produces a vector.

list1 <- list(1:5)

# Convert the lists to vectors.
v1 <- unlist(list1)
v1




# 4. Apply functions --------------------------------
# They are powerful when you want to achieve a simple task but don't want to write a loop which will computationally take longer time.

# 4-1: apply() function
# apply() takes *Data frame* or *matrix* as an input and gives output in *vector*, *list* or *array*. Apply function in R is primarily used to avoid explicit uses of loop constructs. It is the most basic of all collections and can be used over a matrix.

# Syntex
# apply(X, MARGIN, FUN)

m1 <- matrix(c(1:10), nrow=5, ncol=6)
m1

a_m1 <- apply(m1, 2, sum) # 1: means  rows 2: means columns
a_m1



# 4-2: lapply() function 
# lapply() function is useful for performing operations on list objects and returns a list object of same length of original set. lappy() returns a list of the similar length as input list object, each element of which is the result of applying FUN to the corresponding element of list. Lapply in R takes list, vector or data frame as input and gives output in list.
# syntex
# lapply(X, FUN)
# Arguments:
# -X: A vector or an object
# -FUN: Function applied to each element of x	

movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies
movies_lower <-lapply(movies, tolower)
movies_lower

unlist(movies_lower)


# 4-3: sapply() function
# sapply() function takes list, vector or data frame as input and gives output in vector or matrix. It is useful for operations on list objects and returns a list object of same length of original set. Sapply function in R does the same job as lapply() function but returns a vector.

# sapply(X, FUN)
# Arguments:
# -X: A vector or an object
# -FUN: Function applied to each element of x

dt <- cars

lmn_cars <- lapply(dt, min) # output is a list
lmn_cars
smn_cars <- sapply(dt, min) # output is a vector
smn_cars
