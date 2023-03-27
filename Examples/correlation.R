# Q1: Load the dataset into a DataFrame
# read the data from the CSV file (make sure the path is correct)
# store the read rows in a new variable: `df`
df <- read.csv('titanic-train.csv')

# Q2: Which variable best helps us predict whether a passenger survived? Their Age or Pclass (passenger class)? What does that tell us?
# before the comma: check whether the `Age` is missing (`is.na`) and if it is, exclude the row
# after the comma: there is nothing so the filter returns all columns
# we could also use `na.omit`
df <- df[!is.na(df$Age), ]

# calculate the correlation between `Age` and `Survived`
# note we're calculating correlation, not covariance, because we're interested in the strength of the relationship
cor(df$Age, df$Survived)

# same as above but for the passenger class (`Pclass`)
df <- df[!is.na(df$Pclass), ]
cor(df$Pclass, df$Survived)

# A: The passenger class has a stronger relationship with survival, so it's a better than age if we want to predict whether a passenger survived
# (probably because men were less likely to survive than women, regardless of age)
# NOTE: ignore the sign when assessing strength
#       both correlation strengths are negative, but the closer to -1 the correlation, the more reliable the relationship is
#       in this case, the lower the passenger class, the more confident we are the passenger survived

# Q3: Convert the Sex column from a text to a number (0 for male and 1 for female, or vice-versa): is Sex more helpful to predict whether a passenger survived than Age or Pclass? What does that tell us?
# create a new column in the DataFrame, call it `Gender`: we'll 'calculate' the new values from the `Sex` column
# correlation uses numbers, but the `Sex` value is a string, so we need to convert it into a number
# if the `Sex` has a value 'male', the `ifelse` function will return 1; otherwise the function will return 0
df$Gender <- ifelse(df$Sex == 'male', 1, 0)

# calculate the correlation between the new `Gender` column and the `Survived` column
cor(df$Gender, df$Survived)

# A: Gender has a stronger relationship (closer to -1) with the `Survival` column than `Pclass`, so it's the best predictor
