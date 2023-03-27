# Q1: Load the dataset into a DataFrame
# read the data from the CSV file (make sure the path is correct)
# store the read rows in a new variable: `df`
df <- read.csv("titanic-train.csv")

# Q2: Create a variable to store the sample size
# create a variable `sample_size` and set its value (10, in this example)
sample_size <- 10

# Q3: Group passengers into strata based on passenger class using the split function
# the split function splits the DataFrame into groups based on the value of the passenger class
# we store the groups in the variable `strata`
strata <- split(df, df$Pclass)

# Q4: Use lapply to iterate over each group and randomly choose passengers with the sample function
# to sample, create a dynamic function, which receives the groups `strata`
# the lapply function is like a for loop for lists: in this case, it's iterating over all groups (the first parameter, `strata`)
# the function will return a few rows separately for each group
s <- lapply(strata, FUN=function(group) {
  # calculate the number of individuals we should extract from each group
  # the bigger the passenger class, the bigger their share in the sample
  individuals <- round(nrow(group)/nrow(df) * sample_size)

  # extract a sample of rows
  # unfortunately, R does not support sampling directly from a DataFrame
  # you can use a library or sample `rownames`, or the row numbers
  # we should extract a number of samples we calculated above (`size=individuals`)
  # we specify we don't want replacement (`replace=F`) so that we don't get the same passenger twice in the sample
  rows <- sample(rownames(group), size=individuals, replace=F)

  # finally extract the actual rows
  # there is nothing after the comma, so we fetch all columns
  # this is also the last line, so that's what we return
  group[rows, ]
})

# print the sample
# as you can see the rows are separated into three groups: you can combine them into one DataFrame, but that involves some extra work
s
