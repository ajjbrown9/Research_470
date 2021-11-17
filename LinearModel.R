setwd("C:/MS Degree/MIS470/Data Sets")
#install.packages("readxl")
library(readxl)
ctaData = read_excel("CTA3_Data.xls")

#SET VARS ----------------------------------------------------------------

y <- ctaData$USEUR
x <- ctaData$GDP
scale <- ctaData$observation_date

#Step 2.1 - Plot
plot(y ~ x, xlab="GPD", ylab = "USEUR")
lines(sort(x), fitted(lrm)[order(x)])

#Step 2.2 Calculate r
r = cor(x, y)

rsquared <- r^2

#Step 3 - Linear Model
lrm <- lm(y ~ x)


#Step 4 - Significance

lrmSummary <- summary(lrm)

#hypothesis test of model significance
#H0: The slope of the regression model = 0 (i.e. B1 = 0 in equation (Y = b + b1(x) + e))
#H1: The slope of the regression model =/ 0 (i.e. B1 =/ 0 in equation (Y = b + b1(x) + e))


#EXECUTION----------------------------------------------------------------

ctaData

r #pearson's r / the correlation coefficient

#Note that our "r" return value is -.7518, which can be interpreted as the following:
#(1) that the correlation between our independent variable, x ("GPD"), and dependent variable, y ("USEUR"), is inversely related.
#(2) the two variables are moderately correlated with one another,(.3 < |r| < .8), though they are nearing a strong correlation, (|r| > .8)


rsquared #the coefficient of determination, r^2


lrm #regression prediction model for the two variables

lrmSummary # linear regression model stat summary

#Note that our "r^2" return value is .5653. This suggests that approximately 56.53% has been accounted for within this model,
# specifically by this one independent variable.



#CONCLUSIONS:----------------------------------------

#The demonstrated p-Value of 1.92e-07 (.000000192) is far below the significance level of .05.
#This makes us reject the null hypothesis h0: b1 = 0 in favor of the alternative that h1: b1 =/ 0

#In laymen terms, we have established that the rate of change for y per x is not 0.
#As the independent variable, x, changes it will have a statistically significant impact on the dependent variable, y.

#Step 5 - Modeling

#As we have established significance and determined the coefficient of x as well as the intercept, we can now begin writing a formal linear regression model.
# Y = b0(1) + b1(x)
# Y = (2.158e+00)(1) + (- 5.201e-05)(GDP)

#We can now use this new linear model to forecast the US to EUR exchange rate as a function of GPD:
# Y = USEUR = 2.158 - .00005201(GPD)
Y <- (2.158e+00)*(1) + (- 5.201e-05)*(15000)
Y

Sys.Date()
