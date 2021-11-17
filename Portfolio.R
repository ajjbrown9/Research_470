setwd("C:/Learning/MS Degree/MIS470/Data Sets")
testHousingData <- read.csv("MIS470housingtest.csv", header= TRUE)
testHousingData
#install.packages("moments")
#install.packages("gdata")
library(moments)
#Execute Descriptive Stats
summary(testHousingData)
sd(testHousingData$SalePrice)
hist(testHousingData$SalePrice)
kurtosis(testHousingData$SalePrice)
skewness(testHousingData$SalePrice)


setwd("C:/Learning/MS Degree/MIS470/Data Sets")
trainHousingData <- read.csv("MIS470housingtrain.csv", header= TRUE)
trainHousingData
#install.packages("moments")
library(moments)
#Execute Descriptive Stats
summary(trainHousingData)
sd(trainHousingData$SalePrice)
hist(trainHousingData$SalePrice)
kurtosis(trainHousingData$SalePrice)
skewness(trainHousingData$SalePrice)


testHousingDataNoID <- testHousingData[-c(1)]
trainHousingDataNoID <- trainHousingData[-c(1)]
library(gdata)
combinedData <- combine(testHousingDataNoID, trainHousingDataNoID)
hist(combinedData$SalePrice)
summary(combinedData$SalePrice)
sd(combinedData$SalePrice)
kurtosis(combinedData$SalePrice)
skewness(combinedData$SalePrice)


#3 Fit Linear Model for train dataset using all explanitory variables and SalePrice as output
trainModel <- lm(trainHousingDataNoID$SalePrice~.,data=trainHousingDataNoID)

#4 Find the significant factors of the linear model
summary(trainModel)

#5
# Cleaning the null data from the test set
testHousingDataCleaned <- testHousingDataNoID[complete.cases(testHousingDataNoID),]

#Testing that N/A values are removed
head(testHousingDataCleaned,20)

#Using the predict() function on the cleaned test dataset based on the training linear model
predict(trainModel,head(testHousingDataCleaned,20))

#6
#Calculation of Mean Absolute Percentage Error (MAPE)
error <- head(testHousingDataCleaned$SalePrice,20) - predict(trainModel,head(testHousingDataCleaned,20))
MAPE <- mean(abs(100*error/head(testHousingDataCleaned$SalePrice,20)))
MAPE

Sys.Date()