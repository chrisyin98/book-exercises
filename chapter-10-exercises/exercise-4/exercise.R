# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
setwd("C:/Users/Christopher/Desktop/R/book-exercises/chapter-10-exercises/exercise-4")

grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- grants$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
avg <- mean(grants$total_amount)
print(avg)

# What was the dollar amount of the largest grant?
max_dollar_amt <- max(grants$total_amount)
print(max_dollar_amt)

# What was the dollar amount of the smallest grant?
small_dollar_amt <- min(grants$total_amount)
print(small_dollar_amt)

# Which organization received the largest grant?
org_largest_grant <- grants[grants$total_amount == max_dollar_amt, "organization"]

# Which organization received the smallest grant?
org_largest_grant <- grants[grants$total_amount == small_dollar_amt, "organization"]

# How many grants were awarded in 2010?
awarded_in_2010 <- nrow(grants[grants$start_year == "2010", ])
print(awarded_in_2010)
