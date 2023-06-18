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
x1=data$`Rotational speed [rpm]`    
x2=data$`Process temperature [K]`
x3=data$`Torque [Nm]`

# The independent vector.
model <- lm(y~x1+x2+x3)                        #Apply the lm() function

# Show the model.
print(model)
# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")

a <- coef(model)[1]
print(a)

Xrpm <- coef(model)[2]
Xtemp <- coef(model)[3]
Xtor <- coef(model)[4]

print(Xrpm)
print(Xtemp)
print(Xtor)


model_residuals = model$residuals

# Plot the result
hist(model_residuals)

# Plot the residuals
qqnorm(model_residuals)
# Plot the Q-Q line
qqline(model_residuals)

#To check multicollinearity
# Install and load the ggcorrplot package
install.packages("ggcorrplot")
library(ggcorrplot)


# Compute correlation at 2 decimal places
corr_matrix = round(cor(data), 2)

# Compute and show the  result
ggcorrplot(corr_matrix, hc.order = TRUE, type = "lower",lab = TRUE)
