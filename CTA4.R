#Data
mtcars

#Set Vars
y <- trans <- mtcars$am # (0=auto,1=manual)
x1 <- mileage <- mtcars$mpg
cor_yx1 <- cor(y,x1)
glm_yx1 <- glm(y~x1, family = binomial)
sumGLM_yx1 <- summary(glm_yx1)

#Visualizations
splot <- plot(y~x1, xlab="MPG", ylab = "A/M")

#Execute Summary Stats
splot
cor_yx1
glm_yx1
sumGLM_yx1

#1) Scatter plot created. Based on the correlation coefficient, .5998, these variables are moderately and positively correlated with one another.
    #Based on the graph you can tell the relation is binary in nature, in this instance having a y value of 0 or 1.
    #This cannot be properly analyzed through linear regression as linear regressions require the dependent variable
    #to be continuous, not categorical.

#2  Hypothesis Tests:
    #   H0: ????1=0
    #   H1: ????1???0
    #   Alpha = .05
    #
    #   Based on our returned test statistic for ????, .00751, we will reject the null hypothesis in comparison to our .05 alpha.
    #   In general terms, we have determined that, based on our sample, ???? is not equal to 0 (or you can say it our observed sample data
    #   ???? is statistically significant from the expected value of 0).

#3  log( p(y=1) / 1-p(y=1) ) = (????0 + ????1 * X) = (e^(????0+????1*X) / (1 + e^(????0+????1*X))
#   log( p(y=1) / 1-p(y=1) ) = (????0 + ????1 * X) = (e^(-6.604 + .307 * X) / (1 + e^(-6.604 + .307 * X))
#   The probability that y is 1 (am is manual) = (e^(-6.604 + .307 * X) / (1 + e^(-6.604 + .307 * X))

#4  If we continue with this model and assume, for example, that a given car has 16 MPG the following is our result.
#   The probability that y is 1 (am is manual) = (e^(-6.604 + .307 * X) / (1 + e^(-6.604 + .307 * X))
#   p = (e^(-6.604 + .307 * X) / (1 + e^(-6.604 + .307 * X))
#   p = (e^(-6.604 + .307 * 16) / (1 + e^(-6.604 + .307 * 16))

#   Set model estimate value, x.
x <- 16

#Set probability numerator
pNumer <- exp(-6.604 + .307 * x)
pNumer

#Set probability denominator
pDenom <- 1 + exp(-6.604 + .307 * x)
pDenom


#Execute Regression Model
pNumer / pDenom

#The return value of the regression model, .1555, given an x of 16 states that, based on the sample of data we have
    # there is a 15.55% chance that a vehicle that makes 16 MPG is a Manual transmission. This is the same as stating
    # that there is a (1-p = 1-.1555 = .8445 = 84.45%) chance that the vehicle is an Automatic. We would estimate that
    # the vehicle in question is automatic.

Sys.Date()






