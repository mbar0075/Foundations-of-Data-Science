# Q1: Load the dataset into a DataFrame
# read the data from the CSV file (make sure the path is correct)
# store the read rows in a new variable: `df` (you'll see this name often online: it stands for DataFrame)
df <- read.csv("titanic-train.csv")

# Q2: Calculate the mean and standard deviation of the Fare
# get the `Fare` column from the variable `df` using the `$` operator: `df$Fare`
# then, calculate the average fare using the in-built function `mean` and store it in a new variable: `mu`
mu <- mean(df$Fare)

# get the `Fare` df like before and calculate the standard deviation using the in-built function `sd`
# store the standard deviation in a new variable: `stdev`
# for the sake of simplicity, we'll just use the `sd` function here, but remember: the `sd` function divides by N-1, so we are actually estimating the population mean from the sample
stdev <- sd(df$Fare)

# Q3: Draw a box plot of the Fare
# get the `Fare` and visualize it as a boxplot
boxplot(df$Fare)

# Q4: Remove rows whose Fare is an outlier—you can decide how to remove them yourself
# filter the df to remove outliers and store it in a new variable: `sub_df`
# before the comma: remove any rows with a `Fare` higher than one standard deviation above the mean
# after the comma: there is nothing so the filter returns all columns
sub_df <- df[df$Fare > mu + stdev, ]

# get the `Fare` data from the filtered variable, `sub_df`, and visualize it as a boxplot again
boxplot(sub_df$Fare)
