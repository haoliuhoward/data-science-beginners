##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 1
## University of Essex
## Author: Howard Liu
## Last modified: 10-01-2022
##-------------------------------------------------------------------------

# clean up your workspace 
rm(list=ls(all=TRUE)) # remove all the named objects visible in the environment 
cat("\014") # clean your console


# Today's objectives  -----------------------------------------------------
# Things we will learn today:
# 0. Understanding RStudio Interface (assuming you have successfully installed R and RStudio)
# 1. Editing R script files
# 2. Executing parts of an R script file
# 3. Adding comments to an R script file
# 4. Basic Math operations
# 5. Working with objects
# 6. R data types
# 7. Missing values


# 0. Understanding RStudio Interface --------------------------------------

## What is R?
# R is a free, open source software program for statistical analysis. And it's most popular language for statisticians. 

## What is RStudio?
# RStudio is a free, open source IDE (integrated development environment) for R. (You must install R before you can install RStudio.) Its interface is organized so that the user can clearly *view graphs*, *data tables*, *R code*, and *output* all at the same time. It also offers an Import-Wizard-like feature that allows users to import CSV, Excel, SAS (*.sas7bdat), SPSS (*.sav), and Stata (*.dta) files into R without having to write the code to do so.

# Let's look around on the interface (e.g., R script, your loaded data, console, files, packages, and plots)



# 1. Editing R script files -----------------------------------------------

## Write & Save
# When you make some edits to an R script file on RStudio, the file name
# shown at the top of this tab will turn into red (in my dark mode it's shonw blue) and an asterisk (*) will be
# added at the end. This indicates that the current version of the file is NOT
# saved on the computer. This is a dangerous situation because, if your 
# computer freezes now, the edits you've made will be lost. To prevent that from
# happening, SAVE FILES WHENEVER YOU MAKE EDITS. To save files easily, hit 
# Ctrl + S (on a Windows PC) or Command + S (on a Mac machice). S is short for Save.
# Once you do so, the file name at the top of this tab will turn back into black.

# Now, we will edit other parts of this file.

## How to execute your code 
# In doing so, keep in mind that we will always try executing commands *piece by
# piece* in order to see if the commands we write (edit) work properly. In order 
# to execute commands written on an R script file, bring the cursor to the line
# that you want to execute, and hit
# Ctrl + Enter (on a Windows PC) or Command + Enter (on a Mac machine).


# See?
# Every time you hit Ctrl + Enter (or Command + Enter), the commands written
# on a given line are sent to the Console pane and R produces some output. 

# It's useful to remember that we can execute *more than one lines* at once. 
# To execute multiple lines at once, select multiple lines and hit Ctrl + Enter
# (or Command + Enter). 

# For example, select the following two lines and execute them:

3 + 4
7 * 12

# Try executing the following line:

# 5 % 3

# This time, R gives you a message in red, saying Error: unexpected input in 5 % 3.
# This is because % is not a proper math operator and so R does not know what to 
# do with it. Whenever you provide something R doesn't understand, R gives you an 
# error message like this. Error messages are usually in red so that you can easily 
# notice them. 

## Do try to read and understand the error message
# For beginners, people often freak out when the error shows up. But just take a deep breath and read the message. It will tell you what goes wrong. If you still don't understand it, google it online. Chances are that people saw the same error messages before and have provided you an answer (likely on Stack Overflow)


# 3. Adding comments to an R script file ----------------------------------
# Up to this point, you might have noticed that some
# texts are shown in green, whereas others are in blue.
# You might have also noticed that all the texts that are preceded with # are in
# green and those that are not are in blue.

# When you put # in an R script file, R will assume that whatever texts that
# follow are comments, not commands. If you try executing comments, R will simply
# reproduce what's written without actually executing them. For example, execute
# the following line:

# 3 + 4   (command + Shift + "C")

# Look at the console panel. R simply produced "# 3 + 4" without actually doing the
# calculation. This is because the operation "3 + 4" was "commented out".

# Using this feature, we provide comments and annotations to R file.

# We can comment out in the middle of a line as well. For example,

1 + 2 # + 3

# The above line will return 3 because R does 1 + 2 but ignores " + 3" that comes
# after #. 

# Therefore, we can add comments in the following manner:

1 + 2 + 3     # You can add comment like this.

# Or, you can add comment like this. 


# On a Mac, Shift + Command + C will "comment out" selected lines.

# Remember: Add as much comment and annotation as possible whenever you write R codes.
# This is important so that readers of your R file can understand what exactly 
# you are doing. 

# 4. Basic math operations -------------------------------------------------

# addition
5 + 7 

# subtraction
7 - 5

# multiplication
7 * 5

# division
7 / 5

# exponentiation and log

exp(1)

# The exp() in R is a built-in mathematical function that calculates the exponential value of a number or number vector, e^x. The value of e is approximately equal to 2.71828. The exp() method takes a number as an argument and returns the floating-point number by calculating e^x.

log(exp(1))

log(exp(5))

5 ^ 2 # squared

5 ^ 3 # cubed 


# 5. Working with objects -------------------------------------------------

# R is called an "object-oriented" programming language. This means that 
# we create and modify what's called objects when working with R. 

# Let's now create an object. Execute the command below 

my.object <- 12.34 # <- (The shortcut to type up the assignment is option + "-") 
my.object2 = 12.34 # In practice, we often just use = because it's much faster to type up

# What we just did is to create an object called "my.object" and assign 
# a value 12.34 to that object. Put differently, we stored a number 
# 12.34 into a new object called "my.object". 

# Look at the symbol in the middle, " <- ".
# This is called the assignment operator (allocation symbol). 
# We use this operator when creating a new object. 

# Look at the Environment pane (top right). We can see that there is now an object
# my.answer under "Values"

# To take a look at the contents of an object, we simply type its name. 
# Execute the command below.

my.object

my.object2 # and look up the environment, you see you have two objects created 

# We can see that the content of my.object is indeed 12.34. 

# We can tell R to store the answer to an operation. For example, 

my.answer <- 3 + 5 # (Option + "-")

my.answer2 = 3 + 5

# To take a look at this, we run:

my.answer

my.answer2

# R gives you the answer to 3 + 5, instead of just saying "3 + 5". 

# We can re-assign different contents into an existing object. 

my.object <- 23.45

# The content of "my.object" is now replaced with 23.45

my.object

# We can also perform some math operations on an object. 

my.object + 3

my.object * my.object2
# [1] 289.373



#### A few rules about object names

# Rule 1: R is case sensitive!! "X.1" and "x.1" are two different things. 

x.1 <- 12345

X.1


# The second line returns an error message, saying object 'X.1' not found. 
# This happens because the object we created is x.1, not X.1. 

x.1


# Rule 2: Objects can be named in many ways, but several names are prohibited. 
# --Object names cannot start with a number
# --Object names cannot start with a period, comma, or underbar
# --Object names cannot have operator symbols, such as +, -, *, /, ^

# The following returns an error:
object.123 <- 23.45

# We can add numbers as suffix, as follows.

my.object.3 <- 45

my.object.3

# The general advice is you should always give an object a concise and intuitive name. 

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


# 6. R data types ---------------------------------

# Vectors

# The fundamental building block of data in R are vectors (collections of related values, objects, other data structures, etc).

# Here is a vector containing three numeric values 2, 3 and 5.
c(2, 3, 5) 

# And here is a vector of logical values.
c(TRUE, FALSE, TRUE, FALSE, FALSE) 

# A vector can contain character strings.
c("aa", "bb", "cc", "dd", "ee") 


# R has two types of vectors:
# **atomic** vectors: homogeneous collections of the *same* type (e.g. all logical values, all numbers, or all character strings). We will focus on this in today's lecture because it's the most basic, hence important.

# **generic** vectors: heterogeneous collections of *any* type of R object, even other lists (meaning they can have a hierarchical/tree-like structure).

# R has six atomic vector types: 

#   `typeof`  |  `mode`     
# :-----------|:------------:
# logical     |  logical    v
# double      |  numeric    # For higher precision purpose    
# integer     |  numeric    v
# character   |  character  v
# complex     |  complex    # For complex number
# raw         |  raw        # For storing raw bytes

# `typeof(x)` - returns a character vector (length 1) of the *type* of object `x`.

# `mode(x)` - returns a character vector (length 1) of the *mode* of object `x`.
  

# `logical` - boolean values `TRUE` and `FALSE`

typeof(TRUE)
class(TRUE)
mode(TRUE)

?typeof # the type of an object
?mode # storage mode of an object
?class

 
# `character` - text strings

typeof("hello")
typeof('world')

mode("hello")
mode('world')

  
# `integer` - integer numerical values (indicated with an `L`)

typeof( 7L )
typeof( 1:3 )

mode( 7L )
mode( 1:3 )

  
# *Concatenation*: vectors can be constructed using the concatenate, `c()`, function.

c(1,2,3)

c("Hello", "World!")

c(1,c(2, c(3))) # *Note** - atomic vectors are *always* flat.

newObject = c(1,2,3) # you can assign the vector to an object and then work with it just like before

newObject

newWorld = c("Hello", "World!")

newObject + newWorld # see? You can't add numbers with characters.


  
# Type Predicates: The following functions allow you to examine/test what is the type of your object more directly

# `is.logical(x)` - returns `TRUE` if `x` has *type* logical.

# `is.character(x)` - returns `TRUE` if `x` has *type* character.
 
# `is.double(x)` - returns `TRUE` if `x` has *type* double.

# `is.integer(x)` - returns `TRUE` if `x` has *type* integer.

# `is.numeric(x)` - returns `TRUE` if `x` has *mode* numeric.

is.logical(1)
is.logical(TRUE)
is.logical("Hello World")

# Type Coercion
# We can also ask R to coerce certain object to a specific type. The most commonly used coercion is converting between number, character, and factor.

# P.S. Conceptually, factors are variables in R which take on a limited number of different values; such variables are often refered to as categorical variables.

# So let's do an example
object = c(1, 2, 3)

class(object)

object = as.character(object)

class(object)
object

object = as.factor(object)

class(object)
object


# 7. Missing Values ----------------------------------
  
# R uses `NA` to represent missing values in its data structures.

# Stickiness of Missing Values: Because `NA`s represent missing values it makes sense that any calculation using them should also be missing.

1 + NA
1 / NA
NA * 5

mean(c(1,2,3,NA))
sqrt(NA)
3^NA

# Testing for `NA`
# To explicitly test if a value is missing it is necessary to use `is.na` (often along with `any` or `all`).

is.na(NA)
is.na(1)
is.na(c(1,2,3,NA))

any(is.na(c(1,2,3,NA)))
all(is.na(c(1,2,3,NA)))

# Or, if you want to know specifically where the na is in your vector, you can use `which` function to help you

which( is.na(c(1, 1, NA, 3)) )
# [1] 3 Now it tells you that the value in position number 3 is an NA


  
# Other Special values
  
# `NaN` - Impossible values (e.g., dividing by zero) are represented by the symbol NaN (not a number)

# `Inf` - Positive infinity

# `-Inf` - Negative infinity

pi / 0
0 / 0

NaN / NA
NaN * NA

  
# Testing for `inf` and `NaN`
  
# there are still convenience functions for testing for  `NaN` and `Inf` 

is.infinite(Inf)

is.nan(1/0-1/0)



# You can now close R studio (provided that you have already saved all the changes 
# you've made).


# End of File

