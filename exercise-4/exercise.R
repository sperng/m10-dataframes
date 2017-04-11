# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
grants <- read.csv('data/gates_money.csv', stringsAsFactors = FALSE)
# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant.value <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
largest.grant <- grants$total_amount[grants$total_amount == max(grants$total_amount)]

# What was the dollar amount of the smallest grant?
smallest.grant <- grants$total_amount[grants$total_amount == min(grants$total_amount)]

# Which organization received the largest grant?
org.largest.received <- grants$organization[grants$total_amount == largest.grant]

# Which organization received the smallest grant?
org.smallest.received <- grants$organization[grants$total_amount == smallest.grant]

# How many grants were awarded in 2010?
num.grants <- length(grants$grant_title)
