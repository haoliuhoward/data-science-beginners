##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 5: Individual exercise
## University of Essex
## Author: Howard Liu
##-------------------------------------------------------------------------

# clean up your workspace 
rm(list=ls(all=TRUE)) # remove all the named objects visible in the environment 
cat("\014") # clean your console


myPath <- "/Users/howardliu/Dropbox/Essex/data-programming-beginners/Lecture/"
setwd(myPath)
world.data = read.csv("world.csv")


# Democracy and female representation -------------------------------------

# Do democratic countries (democ_regime == "Yes") have better female 
# representation than non-democratic countries? Please answer this question 
# by showing some graphs to assess the relationship between these two variables. 

#=============================================
# Initial data clean up
#=============================================
# Analyze y
summary(world.data $ women09)

# Analyze x
summary(world.data $ democ_regime)

# Note:
# -- There are some missing values.
# -- Labels are not intuitive.
# So, we will deal with these two first.


# Create a smaller data set that omits NA observations.

women.dem <- world.data[ is.na(world.data $ women09) == FALSE & is.na(world.data $ democ_regime) == FALSE, ]

# Let's make sure that we did this correctly. 

summary(women.dem $ women09)
summary(women.dem $ democ_regime)

# We can see that NA cases have been correctly removed. 


# Re-labeling the values
women.dem $ dem.dum <- factor(women.dem $ democ_regime, 
                              levels = c("Yes", "No"),
                              labels = c("Democracy", "Autocracy"))

rm(world.data) # we don't need this anymore


# Q1: Describe Y (numerically and graphically) ------------------------


# Numerical summary

# WRITE YOUR ANSWER (code) HERE

# Graphical summary

# WRITE YOUR ANSWER (code) HERE

# Q2: Describe X (numerically and graphically) ------------------------


# Numerical summary (frequency table)

# WRITE YOUR ANSWER (code) HERE

# Graphical summary (bar chart)

# WRITE YOUR ANSWER (code) HERE

# Q3: Describe X-Y graphically --------------------------------------------


# Histograms

# WRITE YOUR ANSWER (code) HERE


# Box-plots

# WRITE YOUR ANSWER (code) HERE