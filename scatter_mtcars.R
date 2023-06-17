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

#create scatterplot of mpg vs. wt
plot(mtcars$mpg, mtcars$wt, col='steelblue', main='Scatterplot', xlab='Mileage',
     ylab='Weight', pch=19)


#Install car package:
install.packages("car")

#Use scatterplot() function
library("car")
scatterplot(wt ~ mpg, data = mtcars)


# Suppress the smoother and frame  
scatterplot(wt ~ mpg, data = mtcars,smooth=FALSE,grid = FALSE, frame = FALSE)

# Suppress the smoother and frame
scatterplot(wt ~ mpg, data = mtcars, 
            smooth = FALSE, grid = FALSE, frame = FALSE)

# Scatter plot by groups ("cyl")
scatterplot(wt ~ mpg | cyl, data = mtcars, 
            smooth = FALSE, grid = FALSE, frame = FALSE)

# Add labels
scatterplot(wt ~ mpg, data = mtcars,
            grid = FALSE, frame = FALSE,  ellipse=TRUE, 
            smooth=FALSE)


#3D scatter plot 

#Install scatterplot3d package:
install.packages("scatterplot3d")

# Plot
library(scatterplot3d)
grps <- as.factor(mtcars$gear)
colors <- c("#999999", "#E69F00", "#56B4E9")
scatterplot3d(mtcars$mpg, mtcars$wt, mtcars$hp, pch = 16, color = colors[grps],
              grid = TRUE, box = FALSE, xlab = "Mileage", 
              ylab = "Weight", zlab = "Gross horsepower")

#3D scatter plot using iris data set.
head(iris)

# Prepare the data set
x <- iris$Sepal.Length
y <- iris$Sepal.Width
z <- iris$Petal.Length
grps <- as.factor(iris$Species)

# Plot
library(scatterplot3d)
scatterplot3d(x, y, z, pch = 16)


# Change color by groups
# add grids and remove the box around the plot
# Change axis labels: xlab, ylab and zlab
colors <- c("#999999", "#E69F00", "#56B4E9")
scatterplot3d(x, y, z, pch = 16, color = colors[grps],
              grid = TRUE, box = FALSE, xlab = "Sepal length", 
              ylab = "Sepal width", zlab = "Petal length")
