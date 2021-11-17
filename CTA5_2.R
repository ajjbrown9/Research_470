#CTA 5 - Option 1
setwd("C:/Learning/MS Degree/MIS470/Data Sets")
#install.packages("caret")
library(caret)

#Setting Dataset Object
YOURDATA <- read.csv("MIS470Telcocustomer.csv", header = TRUE,stringsAsFactors = TRUE)

#Partition Data into Training and Testing sets.
intrain <- createDataPartition(YOURDATA$Churn,p=0.7,list=FALSE)
set.seed(2017)
training <- YOURDATA[intrain,]
testing <- YOURDATA[-intrain,]

#Fit Logistic Regression model
LogModel<-glm(Churn ~ .,family=binomial(link="logit"),data=training)
summary(LogModel)

#Testing Fit
testing$Churn <- as.character(testing$Churn)
testing$Churn[testing$Churn=="No"] <- "0"
testing$Churn[testing$Churn=="Yes"] <- "1"
fitted.results <- predict(LogModel,newdata=testing,type='response')
fitted.results <- ifelse(fitted.results > 0.5,1,0)
misClasificError <- mean(fitted.results != testing$Churn)
print(paste('Logistic Regression Accuracy',1-misClasificError))

plot(ggpredeict(LogModel, "SeniorCitizenYes")

# p = e^((2.216e-01*(SeniorCitizenYes))+(6.283e-01*(MultipleLinesYes))+(2.526e+00*(InternetServiceFiber optic))+(-2.390e+00*(InternetServiceNo))+(8.476e-01*(StreamingTVYes))+(8.342e-01*(StreamingMoviesYes))+(-7.506e-01*(ContractOne year))+(-1.681e+00*(ContractTwo year))+(3.777e-01*(PaperlessBillingYes))+(3.441e-01*(PaymentMethodElectronic check))+(1.273e+00*(tenure_group0-12 Month)))
#Sys.Date()
#
