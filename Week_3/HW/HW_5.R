psa_mean <- 3.0
s <- 1.1
n <- 100
#What are the complete set of values that a 5% two sided Z test H_0 : mu == mu_0
#Would fail to reject the null hypothesis if the values are between the below range
round(psa_mean + c(-1,1)*qnorm(0.975)*s/sqrt(n),2)
