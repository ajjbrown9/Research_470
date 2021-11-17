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

#Exectution
splot
cor_yx1
glm_yx1
sumGLM_yx1
Sys.Date()




#1) Scatter plot created
#2) Based on the graph you can tell the relation is binary in nature, in this instance having a y value of 0 or 1.
    #This cannot be properly analyzed through linear regression as linear regressions require the dependent variable
    #to be continous, not categorical. 