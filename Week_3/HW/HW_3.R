data("mtcars")
mpg <- mtcars$mpg
mu_0 <- mean(mpg) #mean of the mpg column for mtcars
s <- sd(mpg) #standard deviation for mpg
n <- length(mpg) #size of sample
Z <- qnorm(0.95) #95th percent quantile 

#Equation is normally
#Z > sqrt(n)*(X - mu_0)/s
#Adjusting the equation to solve for X
X <- Z*s/sqrt(n) + mu_0
