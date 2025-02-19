#' ---
#' title: "EPID674 Epidemiologic Data Analysis using R"
#' subtitle: "Getting Started with R"
#' author: "Kelly Bakulski"
#' date: "Last compiled on `r format(Sys.Date(), '%B %d, %Y')`"
#' output:
#'   word_document: default
#'   html_document: 
#'     toc: true
#'     toc_float: true
#' ---
#' 
## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' ## Chapter 1, Getting Started with R
#' 
#' 
#' ## Make your first R objects
## ----make objects--------------------------------------------------------
#### Remarks or comments can be put behind the # symbol
#### Anything from the # to the end of the line will be ignored by R

x <- 4 # x is assigned the value of 4.
x # See what x is
y <- 7 # y is assigned the value of 7
x + y # See what x+y is
z <- x * (x + y) # z is assigned the value of x*(x+y)
z # See what z is

#' 
#' 
#' # Perform some calculations with 'x' and observe the results
## ----calculations on a vector--------------------------------------------
x + 4
x - 3
x * 7
x / 10
x * x
x^2
x / x
x == x

#' 
#' # Assign a vector of integers from 1 to 4 to the object x, using multiple different functions
## ----make integer vector-------------------------------------------------
x <- 1:4 # This writes over the previous x object. No warning or error messages!
x
length(x) # length is a function for checking how long an object is
x <- seq(from = 1, to = 4, by = 1) # Create a vector counting from 1 to 4 by 1
x
x <- c(1, 2, 3, 4) # Combine elements into a vector
x
x <- c(2, 3, 4, 1)
x
length(x)
y <- rep(7, times = 4) # Create a vector with four 7's by rep() and assign it to y
y

#' 
#' # Make a character vector
## ----make character vector-----------------------------------------------
z <- c("UM", "SPH", "EPI", "Kelly")
z <- c("University of Michigan", "School of Public Health", "Epidemiology", "John Snow")
z

#' 
#' # What are the differences between ( ) and [ ] ?
## ----indexing vector-----------------------------------------------------
length(z) # Rounded parentheses are for functions
z[3] # Square brackets are for looking in objects, this is also called "indexing"
z[2] # Find value based on position
z[1:3]

# Find positions meeting criteria
x < 3 # Provides True/False for whether meets the criteria
which(x < 3) # Finds the positions of the Trues

# Find values meeting criteria
x[x < 3]

#' 
#' # Specify options in a function
## ----options in a function-----------------------------------------------
seq(from = 10, to = 23, by = 1) # count from 10 to 23 by 1
seq(from = 10, to = 23) # equivalent
seq(10, 23) # equivalent
seq(10, -3) # count from 10 to -3
seq(from = -1, to = 11, by = 3) # count from -1 to 11 by 3

# Note, you have all of the tools to complete homework 1

#' 
#' 
#' # Make your first data frame
## ----data frame----------------------------------------------------------
# Combine x and y vectors by column into a data frame and assign it to an object called 'df'
df <- data.frame(x, y, z)
df # Look at df
df$x # Use $ to call up columns within data frames
df$y

#' 
#' # Index (look around) inside the data frame based on the position
## ----indexing data frame-------------------------------------------------
# Index based on position
df[3, 1] # structure: df[rows,columns]
df[4, ]
df[, 1]
df[c(1, 2, 3), ] # Read your R code from the inside out. Start with the innermost set of parentheses.
df[c(3, 1, 3), ]
df[c(FALSE, TRUE, TRUE, FALSE), ]
df[c(T, F, F, T), ]

# Index based on value
df$x > 2 # Find a logical vector (True/False) of the rows that meet the value of interest (in this case x>2)
df[, 1] > 2 # Same as above
which(df[, 1] > 2) # Find rows that meet the criteria, similar to line above

df[df$x > 2, ] # Now show the rows that are True
df[df[, 1] > 2, ] # Same as above

#' 
#' # Perform calculations on the data frame
## ----calculations data frame---------------------------------------------
sum(df[, 1])
sum(x)

#' 
#' # Recode a value in the data frame based on the position
## ----recode--------------------------------------------------------------
df
df[3, 2] <- 5 # recode a value
# What do you expect?
df # What do you get?
# Do they match?

#' 
#' # Remember to save your R script!
#' # To exit R 
## ----exit, eval=FALSE----------------------------------------------------
## q()

#' 
#' 
