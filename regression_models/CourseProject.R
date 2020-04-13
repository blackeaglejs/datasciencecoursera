## Pull in data. 
library(UsingR)
data(mtcars)

# Let's get the column names. 
colnames(mtcars)

## Looks like the relevant ones are: 
### "mpg" - looks at actual mileage, will be our outcome variable. 
### "am" - The main input variable. 

## I will do a quick regression to see how effective it is. 
simple_linear <- lm(mpg ~ am, data=mtcars)
summary(simple_linear)

## It looks like it has a R-squared of .3598, which means that 35.98% of the variance is
## explained by this simple model. It looks like there is a significant relationship.

## Let's try a multivariate regression using a few more potential variables. 
## I'm selecting number of cylinders, horsepower, and the weight of the car. 
multivariate_linear <- lm(mpg ~ am + cyl + hp + wt, data=mtcars)
summary(multivariate_linear)

## When I run this regression, it looks like transmission is now insignificant.
## What if I run this a little differently by excluding the intercept? 
multivariate_linear_no_intercept <- lm(mpg ~ am + cyl + hp + wt - 1, data=mtcars)
summary(multivariate_linear_no_intercept)

## Now all the variables are significant at an alpha of 0.05. 
summary(lm(mpg ~ cyl + hp + wt + am, data = mtcars))