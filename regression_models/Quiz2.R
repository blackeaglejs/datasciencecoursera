## Question 1
x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)

q1 <- lm(y~x)
summary(q1)$coefficients

## Question 2
summary(q1)

## Question 3
y <- mtcars$mpg
x <- mtcars$wt
q3 <- lm(y ~ x)
summary(q3)

### The below sets the predictor as the mean weight. 
predict_q3 <- predict(q3,data.frame(x=mean(x)), interval="confidence")

## Question 4 
help(mtcars)

## Question 5 
### Since it's a 3000 lb car, the predictor x would be 3. 
### Interval is set to prediction rather than confidence.
predict_q5 <- predict(q3,data.frame(x=3), interval="prediction")

## Question 6
q6 <- lm(y~I(x/2))
summary(q6)
q6_coefficients <- summary(q6)$coefficients
q6_mean <- q6_coefficients[2,1]
q6_std_error <- q6_coefficients[2,2]
q6_df <- q6$df

q6_cf <- q6_mean + c(-1,1) * qt(0.975,df=q6_df) * q6_std_error