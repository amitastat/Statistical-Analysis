library(carData)
library(ggplot2)
library(readxl)
data=read_excel("D:/LPU/Chapter/manova_data_plant_growth.xlsx")

# Print the data
data


mydata=data.frame(
Growth=c(data$Height,data$Width,data$Weight),
Parameters=rep(c("Height","Width","Weight"),each=15),
Treatment=rep(data$Treatment,3),
stringsAsFactors = FALSE
)


#ggplot(mydata, aes=(y, x, fill=factor(z)))+geom_boxplot()
cols <- rainbow(3, s = 0.5)
boxplot(Growth ~ Treatment + Parameters, data = mydata,
        at = c(1:3, 5:7, 9:11), col = cols,
        names = c("", "A", "", "", "B", "","", "C", ""), xaxs = FALSE)
legend("topleft", fill = cols, legend = c(1,2,3), horiz = T)

ggplot(mydata, aes(y=Growth, x=Parameters, fill=factor(Treatment))) +
  geom_boxplot()

ggplot(mydata, aes(y=Growth, x=Parameters, fill=factor(Treatment))) +
  geom_boxplot()+
  theme( legend.position = "none" )+
  facet_wrap(~Parameters,scale="free")
