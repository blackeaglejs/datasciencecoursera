## Question 1
library(MASS)
data(shuttle)
log_reg_q1 <- glm(shuttle$use ~ shuttle$wind, family = "binomial")
exp(log_reg_q1$coeff)[2]
## Question 2
1/exp(log_reg_q1$coeff)[2]