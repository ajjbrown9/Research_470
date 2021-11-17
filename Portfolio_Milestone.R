setwd("C:/Learning/MS Degree/MIS470/Data Sets")
housingData <- read.csv("MIS470housingtesting.csv", header= TRUE)
housingData
#install.packages("moments")
library(moments)
#Execute Descriptive Stats
summary(housingData)
sd(housingData$SalePrice)
hist(housingData$SalePrice)
kurtosis(housingData$SalePrice)
skewness(housingData$SalePrice)


#Descriptive Explanation:
#Mean = $177,958: On average, a house sells for $177,958.
#Median = $161,750: Half the results in the array of sales price data are less than or equal to $161,750 and half are greater than or equal to $161,750.
#Standard Deviation = $77,569: On average, the sale of a house deviates $77,569 from the mean value.
#Minimum = $52,500: The minimum sale of a house was $52,500.
#First Quartile = $129,000: 25% of house sale prices are less than or equal to $129,000.
#Third Quartile = $206,925: 75% of house sale prices are greater than or equal to $206,925.
#Maximum = $745,000: The maximum sale of a house was $745,000.

#Historgram Explanation:
# The visual output of housing sale price data reflects a positively, or right, skewed (median < mean or when skewness > 0) leptokurtic (kurtosis > 0) distribution of the sample data.
# This data is not normally distributed as the values are distributed asymmetrically around the mean. As the skewness is positive, the distribution is "biased towards
# higher values, such that mean of the distribution will exceed the median" (). As far as kurtosis goes, here we observe a leptokurtic, or fat-tailed distribution,
# "where extreme outcomes are more common than would be predicted by a standard normal distribution (). You can see this represented in the data and histogram by looking
# at the high frequency/concentration of observed sale prices at the median value relative to the rest of the distribution.
Sys.Date()