## Module 5 Variability

### The Variance
  * Recall that the mean of a distribution was a measure of its center
  * <b>The varaince</b> is a measure of a distributions spread
  * If X is a random variable with mean μ, the variance of X is defined as
  ````
  Var(X) = E[(X - μ)^2] = E[X^2] - E[X]^2
  ````
  * Thus variance is the expected (squared) distance from the mean
  * The squared root of a variance is called the <b>standard deviation</b>
    * The benefit of working with standard deviation is that they have the same unit as the man and data. Where the variance is the squared unit
  * Remember we are referring to the population variance. It measures how spread out the population of interest is

  * Example
    * What is the varaince from the result of a toss of a potentially biased coin with probability of heads (1) p?
    ````
    E[X] = 0x(1-p) + 1*p = p

    X is either 0 or 1, X^2 = X

    E[X^2] = E[X] = p

    Var(X) = E[X^2] - E[X]^2 = p - p^2 = p(1-p)
    ````
    * This is a famous equation and it is worth committing to memory
### The sample variance
  * Sample variance is the estimator of the population variance  
  * The sample variance is (almost) the average squared deviation of observations around the sample mean
  ````
  S^2 = ∑(Xi - X)^2/(n-1)
  ````
  * The sample standard deviation is the square root of the sample variance
  * Note that the sample variance is almost, but not quite, the average squared deviation from the sample mean. Since we divide by n-1 instead of n
  * It is also nice that the more data we collect the distribution of the sample variance gets more concentrated around the population variance it is estimating

### Simulating Experiments
  - Read pages 90-93


### Simulaion Example
````
nosim <- 1000
n <- 10
## simulate nosim averages of 10 standard normals
sd(apply(matrix(rnorm(nosim * n), nosim), 1, mean))
## Let's check to make sure that this is sigma / sqrt(n)
1 / sqrt(n)
````

### Summary Notes
  * The sample variance estimates the population variance
  * The distribution of the sample variance is centered at what its estimating
  * It gets more concentrated around the population variance w/ large sample sizes
  * The variance of the sample mean is the population variance divided by n
  ````
  σ^2/n
  ````
  * The square root is the standard error
  * It turns out that we can say a lot about the distributions of averages from random samples, even though we only get one to look at in a given data set

### Some Common Distributions
  * <b>The Bernoulli Distribution</b>
    * This distribution arises as the result of a binary outcome
      * ex. Coin flip is a Bernoulli Distribution
    * Bernoulli random variables take (only) the values 1 and 0 with probabilities
      * $p$ and $1-p$
    * The mean of a Bernoulli random variable is $p$ and the variance is $p(1-p)$
    * If we let $X$ equal a random variable it is normal to call $X=1$ a "success" and $X=0$ a "failure"
    * If a random variable follows a Bernoulli distribution w/ success probability $p$ we write
      * X ~ Bernoulli( p )
    * Another example of a Bernoulli would be if a patient has high blood pressure. Where 1 is high blood pressure and 0 is normal
  * <b>Binomial Trials</b>
    * The binomial random variables are obtained as the sum of iid Bernoullli trials
      * ex. If a bernoulli trial is the result of a coin flip, a binomial random variable is the total number of heads
    * To write it out as mathematics, let
      * $X,.....,X_n$ be the iid Bernoulli( p )
      * then $X = \sum_{n=1}^nx_i$ is a binomial random variable
    * We write that X ~ Binomial(n,p)
    * The Binomial mass function is
      * $P(X=x) = {n \choose x} p^x(1-p)^{n-x}$
      * where $x=0,......,n$
    * The notation ${n \choose x}$ (read as "n choose x") is described as
      $$
      {n \choose x} = {n! \over x!(n-x)!}
      $$
      * The above equation counts the number of ways of selecting x items out of n without replacement disregarding the order of the items
  * <b> The normal distribution </b>
    * A random variable is said to follow a <u>normal</u> or Gaussian distribution with mean $\mu$ and variance $\sigma^2$ if the associated density is
    $$
    (2\pi\sigma^2)^{-1 \over 2}e^{-(x-\mu)^2/2\sigma^2}
    $$
    * The normal distribution is characterized by the mean and variance. We write
      * $X$ ~  $N(\mu,\sigma^2)$
    * When $\mu=0$ and $\sigma=1$ the resulting distribution is called the <u>standard normal distribution </u>
      * Standard normal RVs are often labeled Z
### Reference quantiles for standard normals
  * The normal distribution is so important that it's useful to memorize reference probabilities and quantiles
    * Most relevant probabilities are
      * Approximately 68%, 95% and 99% or the normal density lies within 1,2 and 3 standard deviations from the standard deviation mean
      * -1.28, -1.645, -1.96 and -2.33 are the 10<sup>th</sup>, 5<sup>th</sup>, 2.5<sup>th</sup> and 1<sup>st</sup> percentile of the standard normal distribution
      * By symmetry, 1.28, 1.645, 1.96 and 2.33 are the 90<sup>th</sup>, 95<sup>th</sup>, 97.5<sup>th</sup> and 99<sup>st</sup> percentile of the standard normal distribution

### Shifting and scaling normals
  * Since the normal distribution is characterized by only the mean and variance, which are a shift and a scale, we can transform normal random variables to be standard normal and vice versa
  * if $X$ ~ $N(\mu,\sigma^2)$ then
    $$
    Z = {X - \mu \over \sigma}
    $$
  * If $Z$ is standard normal
    * $X = \mu - \sigma Z$ ~ $N(\mu,\sigma^2)$

### The Poisson Distribution
  * The Poisson distribution is used to model counts
  * Binomial and multinomial distributions can all be modeled by clever uses of the Poisson
  * The poisson distribution is especially useful for modeling unbounded counts or counts per unit of time (rates)
    * number of clicks on a website or people who show up at a bus stop
  * There is also a deep connection between the Poisson distribution and popular models for so-called contingency table data, which is simply tabulations of discrete characteristics
  * Finally, when n is large and p is small, the poisson is an accurate approximation to the binomial distribution
  * The poisson mass function is
    $$
    P(X=x;\lambda)={\lambda^xe^{-\lambda} \over x!}
    $$
    * The mean of this distribution is $\lambda$
    * The variance of this distribution is also $\lambda$
  * Notice x goes from 0 to $\infty$, so poisson is especially useful for modeling unbounded counts

### Rates and Poisson random variables
  * The poisson distribution is useful for rates, counts that occur over times
  * Specifically, if X ~ Poinsson($\lambda t$)
    * where $\lambda=E[{X \over t}]$ is the expected count per unit of time and t is the total monitoring time

### Asymptopia
  * Asymptotics
    * Asymptotics is the term for the behavior of
  * Limits of random variables
    statistics as the sample size limits to infinity
    * The result is called the <b> Law of Large Numbers (LLN)</b>
      * It states that if you go to the trouble of collecting an infinite amount of data, you estimate the population mean perfectly
        * The sampling assumption is the data is iid
  * Discussion
    * An estimator is called <b>consistent</b> if it converges to what you want to estimate
    * The sample variance and the sample standard deviation of iid random variables are consistent as well
