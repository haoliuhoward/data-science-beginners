##-------------------------------------------------------------------------
## R code for Data Science for Beginners Day 4
## University of Essex
## Author: Howard Liu
## Last modified: 13-01-2022
##-------------------------------------------------------------------------

library(tidyverse) # package for many useful functions, including dplyr


# # Learning Objectives Today
# 1. Import and export data files
# 2. Explore the data 
# 3. Pipe operator
# 4. Working with data frames: dplyr functions for data wrangling
# 
# 
# 
# # 1. Import data
# To read in (=import) a data set from a file, we use read.XXX functions, such as
# 
# * read.csv        Comma-separated text file
# * read.table      Tab-separated text file
# * read.dta        Stata file
# * read.spss       SPSS file
# * read.xlsx       Excel file
# 
# To load data, your computer needs to know where the data file is saved. The key is to set the path for R to locate

myPath <- "/Users/howardliu/Dropbox/Essex/data-programming-beginners/Lecture/"
setwd(myPath)
world.data = read.csv("world.csv") %>% as_tibble() # here I make it a tibble data frame just for illustration purpose


# ## 1-2 Export data
# # To export data, use the write.csv() function
# 
# myPath <- "/Users/howardliu/Dropbox/Essex/data-programming-beginners/Lecture/"
# setwd(myPath)
# write.csv(world.data, file = "world_tmp.csv")
# 
# # save(world.data, world.data2, file ="world_tmp.rda") <-- This allows you to save multiple data frames together into one file




# 2. Explore your data

# Whenever you read in a data set from a file, it's always a good idea to take a look at it first to have an idea about what it looks like. There are a few functions that will let us take a look at the data set.

# The dim function tells us the dimension (the number of rows and the number of columns)

dim(world.data)

# So this contains 191 rows (observations) and 62 columns (variables)


# The head and tail functions let us see the first or last 5 rows of the data set.

head(world.data)

tail(world.data)


# Or we can do this using the square brackets

world.data[1:10, 1:5]


# This tells R to show the first 10 rows and first 5 columns. We can easily see that country is the unit of observation. We can also see that there are variables such as colony, confidence, decentralization, and dem_other. 
# 
# When working with a large data set like this one, you may want to  use the spreadsheet view (just like Excel). To do so, we use the View function, which opens a spreadsheet tab in the script pane. 


View(world.data)


# If you want to take a further look at a specific variable, you can use summary() function. 

summary(world.data$colony)


# Or you can simply summarize the entire data frame, which in some cases might be useful.

summary(world.data)



# 3. Understanding pipe operator %>% in R
# Before introducing dplyr (a fast, powerful tool for working with data frame), we need to know pipe operator first. 

# The pipe operator makes it possible to easily chain a sequence of calculations.

# first, install it from this package (You don't have to if you have installed the tidyverse package)
library(magrittr)

# Support we create an object and assign a value. If we want to do multiple calculations, we need to write a lot of parentheses, which can be very annoying. 

x <- c(0.109, 0.359, 0.63, 0.996, 0.515, 0.142, 0.017, 0.829, 0.907)

# Like compute the logarithm of `x`, return suitably lagged and iterated differences, 
# compute the exponential function and round the result
round(exp(diff(log(x))), 1)

# Same task can be completed by using pipes. Everything looks clearer and easy. 
x %>% log %>% diff %>% exp %>% round(., 1)


# The hot key for %>% is `Command` + `shift` + `m` (on MAC)
# 
# Now, let's go back to dplyr function then.

# 4. dplyr in R ---------------------------
# It is a fast, powerful tool for working with data frame. You don't need to worry about parentheses when writing commands anymore. It is magical! 
#   
# dplyr is based on the concepts of functions as verbs that manipulate data frames.
# 
# Single data frame functions / verbs:
  
  
# * `filter()`: pick rows matching criteria
# * `slice()`: pick rows using index(es)
# * `select()`: pick columns by name
# * `pull()`: grab a column as a vector
# * `rename()`: rename specific columns
# * `arrange()`: reorder rows
# * `mutate()`: add new variables
# * `transmute()`: create new data frame with variables
# * `distinct()`: filter for unique rows
# * `sample_n()` / `sample_frac()`: randomly sample rows
# * `summarise()`: reduce variables to values
# * ... (many more)


## dplyr rules for functions

# 1. First argument is *always* a data frame
# 
# 2. Subsequent arguments say what to do with that data frame
# 
# 3. *Always* return a data frame
# 
# 4. Don't modify in place
# 
# 5. Lazy evaluation magic


## Example Data

# We will demonstrate dplyr's functionality using the `world` data.

### filter() - Show only countries in the EU

world.data %>% filter(eu =="EU Member state") 


### filter() - Show countries in the EU and GDP per capita is high. Plus I only want to show the country name, not anything else.

world.data %>% filter(eu =="EU Member state" & gdp_cap2 == "High") %>% head(2) %>% select(country)



### select() - Individual Columns

world.data %>% select(country, eu, gdp_cap2) %>% head(5)



### select() - Exclude Columns

world.data %>% select(-country, -eu, -gdp_cap2) %>% head(5)


### select() - Matching

world.data %>% select(contains("gdp"), 
                      contains("dem"))


### mutate() - Modify columns

world.data %>% select(1:2) %>% mutate(newVar = paste(country, colony, sep="/") )

### rename() - Change column names

world.data %>% rename(gdp_08 = gdp08) %>% select(gdp_08)



### summarise() with group_by()

world.data %>% group_by(eu) %>% 
  summarise(meanGDP = mean(gdp08, na.rm = TRUE))


### left_join() - Merge two datasets

# first create two datasets
dat1 = world.data %>% select(1:3)
dat2 = world.data %>% select(1:2, 4)

dat_merged = left_join(dat1, dat2, by = c("country" = "country", "colony" = "colony"))
dat_merged 


# End of file