#install the readxl package if haven't
#install.packages("readxl")
#install.packages("ggplot2")
#library(ggplot2)

library(readxl)

# importing excel file from local folder
data=read_excel("D:/LPU/Chapter/machine failure.xlsx")
dim(data)

data=data[,4:7]
names(data)
y=data$`Air temperature [K]`               # The dependent vector.
x=data$`Rotational speed [rpm]`    # The independent vector.
relation <- lm(y~x)                        #Apply the lm() function

# Give the chart file a name.
png(file = "linearregression.png")

print(summary(relation))

# Find Air temperature 170 with Rotational speed of machine 170.
a <- data.frame(x= 170)
result <-  predict(relation,a)
print(result)

# Plot the chart.
plot(y,x,col = "blue",main = "Rotational speed & Air temperature Regression",
     cex = 1.3,pch = 16,xlab = "Air temperature",ylab = "Rotational speed")
 abline(lm(x~y))

# Save the file.
dev.off()