A1 <- c(1,2,9,6,4)
A2 <- c(5,1,9,2,3)
A3 <- c(1,2,3,4,5)
B1 <- c(2,4,6,8,10)
B2 <- c(0,3,6,9,12)
B3 <- c(1,1,2,8,7)

DF2 <- data.frame(
  x = c(c(A1, A2, A3), c(B1, B2, B3)),
  y = rep(c("A", "B"), each = 15),
  z = rep(rep(1:3, each=5), 2),
  stringsAsFactors = FALSE
)
str(DF2)
# 'data.frame': 30 obs. of  3 variables:
#  $ x: num  1 2 9 6 4 5 1 9 2 3 ...
#  $ y: chr  "A" "A" "A" "A" ...
#  $ z: int  1 1 1 1 1 2 2 2 2 2 ...

cols <- rainbow(3, s = 0.5)
boxplot(x ~ z + y, data = DF2,
        at = c(1:3, 5:7), col = cols,
        names = c("", "A", "", "", "B", ""), xaxs = FALSE)
legend("topleft", fill = cols, legend = c(1,2,3), horiz = T)


library(ggplot2)
ggplot(DF2, aes(y, x, fill=factor(z))) +
  geom_boxplot()