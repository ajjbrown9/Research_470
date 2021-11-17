#1
data <- head(iris, 6)
data
Sys.Date()

#2
summary(iris)
Sys.Date()

#3
data_sub1 <- summary(iris$Sepal.Length)
data_sub2 <- summary(iris$Petal.Length)
data_sub1
data_sub2
par(mfrow=c(2,2))
hist(iris$Sepal.Length
     ,xlab = "Sepal Length"
     ,xlim = c(0,8)
     ,breaks = 5
     ,ylim = c(0,75))
boxplot(iris$Sepal.Length)
hist(iris$Petal.Length
     ,xlab = "Petal Length"
     ,xlim = c(0,8)
     ,breaks = 5
     ,ylim = c(0,75))
boxplot(iris$Petal.Length)
Sys.Date()

#4
cor(iris$Sepal.Length, iris$Petal.Length)
plot(iris$Sepal.Length,iris$Petal.Length)
Sys.Date()