
# Task 1 - Read Data & Assign to Frame
setwd("C:/Learning/MS Degree/MIS500/Data")
HousingData <- read.csv(file="housing.csv", header= FALSE, fileEncoding="UTF-8-BOM")

HousingFrame <- data.frame(HousingData)

HousingFrame

V1 <- HousingFrame[["V1"]]
Var1 <- as.numeric(V1)
Var1

V6 <- HousingFrame[["V6"]]
Var6 <- as.numeric(V6)
Var6

V11 <- HousingFrame[["V11"]]
Var11 <- as.numeric(V11)
Var11

V14 <- HousingFrame[["V14"]]
Var14 <- as.numeric(V14)
Var14

varFrame <- data.frame(Var1,Var6, Var11, Var14)

# Task 2 - Perform Data Summary
summary(HousingFrame)
summary(varFrame)

# Task 3 - Perform Correlation [1,6,11,14]
library(dplyr)

cor(HousingFrame) #Full DataFrame Correlation
cor(varFrame) #Variable Specfic DataFrame Correlation

# Task 4 - Create a Scatter Matrix of the previously designated attributes

pairs(varFrame)

# Task 5 - Build a MLR (Multiple Linear Regression Model) using the previously designated attribute w/ Variable 14 as the Output.

modelHousingFrame <- lm(V14~.,data=HousingFrame)
modelHousingFrame
summary(modelHousingFrame)

#taskModel <- lm(V14~V1+V6+V11, data = HousingFrame) #Add-hoc book method of creating the task model from the data set
#summary(taskModel)

modelvarFrame <- lm(Var14~.,data=varFrame) #Method of creating the task model based on a sub-frame created earlier that I had use with pair()
modelvarFrame
summary(modelvarFrame)

#MLR Model: F(x) = y = b + a(x1) + a(x2) + a(x3) + error
# x1 = V1; x2 = V6; x3 = V11
# y = -3.35990 + -.20491(x1) + 7.37937(x2) + -1.07002(x3) + error

x1 <- .00632
x2 <- 6.575
x3 <- 15.3

y <- -3.35990 + -.20491*(x1) + 7.37937*(x2) + -1.07002*(x3)
y