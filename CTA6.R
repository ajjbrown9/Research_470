tempCelsius <- function(x){
  C=5*(x-32)/9
  return(C)
}
tempCelsius(80)
tempCelsius(85)
tempCelsius(90)
tempCelsius(95)
tempCelsius(100)

sumSquares <- function(s1,s2,s3){
  S=(s1^2)+(s2^2)+(s3^2)
  return(S)
}

sumSquares(1,2,3)
sumSquares(5,5,5)
sumSquares(2,4,6)
sumSquares(10,10,10)
sumSquares(12,-4,9)

dataSummary <- function(x){
  X1 = mean(x)
  X2 = sd(x)
  X3 = min(x)
  X4 = max(x)
  vecSum = c(X1,X2,X3,X4)
  return(vecSum)
}
summaryMpg <- dataSummary(mtcars$mpg)
summaryHp <- dataSummary(mtcars$hp)
summaryDisp <- dataSummary(mtcars$disp)
summaryWt <- dataSummary(mtcars$wt)
summaryQsec <- dataSummary(mtcars$qsec)
summaryMpg
summaryHp
summaryDisp
summaryWt
summaryQsec

plots <- function(x,y,z,u,v){
  par(mfrow=c(2,5))
  hist(x)
  hist(log(x))
  hist(y)
  hist(log(y))
  hist(z)
  hist(log(z))
  hist(u)
  hist(log(u))
  hist(v)
  hist(log(v))
}
vecMpg <- c(mtcars$mpg)
vecHp <- c(mtcars$hp)
vecDisp <- c(mtcars$disp)
vecWt <- c(mtcars$wt)
vecQsec <- c(mtcars$qsec)
plots(vecMpg, vecHp, vecDisp, vecWt, vecQsec)

rss <- function(x,y){ #This function is being use to return the residual sum of squares to be used in later calculations
  obs <- c(y) # Vector containing the observed data.
  hyp <- c(x) # Vector containing the null hypothesized data.
  resSS <- sum((hyp - obs)^2) # Returns the residual sum of squares for the observed and hypothesized values.
  return(resSS) # This calls on resSS to return its value assigned based on the lines preceeding it.
}

rss(c(mtcars$mpg+2),c(mtcars$mpg)) # Insert any matching length array to have the residual calculated.
rss(4,16)
rss(c(1,2,3,4,5),c(5,4,3,2,1))
rss(c(10,100,1000,10000,100000), c(20,40,60,80,100))
rss(c(mtcars$wt-.50),c(mtcars$wt))

Sys.Date()
