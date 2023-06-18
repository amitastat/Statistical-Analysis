#install the readxl package if haven't
#install.packages("readxl")
install.packages("corrplot")

library(readxl)

# importing excel file from local folder
data=read_excel("D:/LPU/Chapter/machine failure.xlsx")

head(data)
names(data)
dim(data)

data=data[,4:7]

#Pearson correlation between 2 variables 
cor(data$`Air temperature [K]`, data$`Rotational speed [rpm]`)

# correlation for all variables 
round(cor(data), digits = 2) # rounded to 2 decimals 
#Scatterplots for several pairs of variables
library(corrplot) 
corrplot(cor(data), method = "number", type = "upper") # show only upper side 


#install.packages("ggplot2")
library(ggplot2)

ggplot(data) +
  aes(x = `Air temperature [K]`, y = `Rotational speed [rpm]`) +
  geom_point(colour = "#0c4c8a") +
  theme_minimal()         

plot(data$`Air temperature [K]`, data$`Rotational speed [rpm]`)

# multiple scatterplots
pairs(data[, 1:4])
corrplot(cor(data),method = "number",type = "upper" )# show only upper side
