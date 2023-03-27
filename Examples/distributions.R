# Q1: Load the dataset into a DataFrame
# read the data from the CSV file (make sure the path is correct)
# store the read rows in a new variable: `df`
df <- read.csv('titanic-train.csv')

# Q2: Plot a histogram of the passengers' ages as a probability distribution using the hist function—what theoretical distribution does it resemble?
# get the `Age` values from the data we loaded previously and plot it as a histogram
# `freq=FALSE` instructs R to compute the probabilities, not the raw frequencies
# check out the documentation for other parameters: https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/hist
hist(df$Age, freq=FALSE)
# A: the histogram resembles a Gaussian (normal) distribution with a positive skew, or like a Poisson distribution

# Q3: Create a function to calculate Pearson's Coefficient of Skewness, and calculate the skewness of the passengers' ages
# create a new function, `skew`, that receives one parameter, a vector called `x` and calculates Pearson's Coefficient of Skewness
skew <- function(x) {
  # calculate the mean of the vector `x` and store it in a new variable: `mu`
  mu <- mean(x)

  # calculate the standard deviation of the vector `x` and store it in a new variable: `sdev`
  # we're not using the in-built `sd` function because we want to calculate the standard deviation of the sample/population that we have
  # `sd` estimates the standard deviation of the population from a sample
  sdev <- sqrt(sum((x - mu)^2)/(length(x) - 1))

  # calculate the median of the vector `x` and store it in a new variable: `md`
  md <- median(x)

  # calculate Pearson's Coefficient of Skewness
  # this is the last line, so it acts as the function's return value
  3 * (mu - md) / sdev
}

# we need to handle the missing values (or the function breaks down)
# the following line (commented out) removes rows with NA (missing) values and stores the returned DataFrame back in the `df` variable
# `target.colnames='Age'` tells the function to only remove rows if their `Age` value
# uncomment it to experiment with this option
# df <- na.omit(df, target.colnames='Age')

# the following line fills missing values with the median of the `Age`
# on the left-hand side: we only want to change the `Age` values, and only if their value is missing (`is.na` returns TRUE)
# in other words: change the values of `Age` if their value is NA
# on the right-hand-side: calculate the mean, but remove missing values (`na.rm=TRUE`) (otherwise the mean will be NA too)
df$Age[is.na(df$Age)] <- median(df$Age, na.rm=TRUE)

# calculate (and print) the skewness of the remaining ages
skew(df$Age)
