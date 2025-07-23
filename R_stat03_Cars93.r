library(MASS)
str(Cars93)

summary(Cars93$Price)

install.packages(“psych”)
library(psych)
describe(Cars93$Price) 
describe(Cars93[c(“Price”, “MPG.highway”)], na.rm=TRUE, interp=TRUE, skew=TRUE, ranges=TRUE, trim=0.1)

install.packages(“pastecs”)
library(pastecs)
stat.desc(Cars93[c(“Price”, “MPG.highway”)], basic=TRUE, desc=TRUE, norm=TRUE, p=0.90)
