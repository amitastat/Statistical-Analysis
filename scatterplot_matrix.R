#load the dataset
data(mtcars)

#view first six rows of mtcars dataset
head(mtcars)

#summarize each variable in mtcars dataset
summary(mtcars)

#display rows and columns
dim(mtcars)

#display column names
names(mtcars)


# Plot the matrices between
# 4 variables giving 12 plots.

# One variable with 3 others
# and total 4 variables.
pairs(~wt + mpg + disp + cyl, data = mtcars,
      main = "Scatterplot Matrix")
