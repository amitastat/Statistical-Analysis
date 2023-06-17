# Get the input values.
X=3:10
Y=c(2.3,2.7,3.1,3.6,3.8,4,4.3,4.5)

# Plot the chart with 
#age and height.
plot(X,Y)

#use the parameter main in the syntax
plot(X,Y,main="Age versus Height")


#use the parameter xlab and ylab in the syntax to describe the X-axis and Y-axis respectively
plot(X,Y,main="Age versus Height",xlab="Age",ylab="Height")


install.packages("readxl")
library(readxl)

# importing excel file from local folder
data=read_excel("D:/LPU/Chapter/Data_Companies_Salaries.xlsx")

head(data)
names(data)
plot(data$Rating,data$`Average Salary`,main="Age versus Height",xlab="Rating",ylab="Average Salary")

