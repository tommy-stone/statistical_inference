# Statistical Inference Course
* Date: 01112018
* Author: tstone

## Module 1

### Introduction

* Statistical Inference

  * Statistical inference is about generating a conclusion from a population from a noisy sample
  * The use of probability models as the connection from the data and our population will represent the most effective way to obtain inference

* The goals of Inference  
  1. Estimate and quantify the uncertainty estimate of a population
  2. Determine whether a population quantity is a benchmark value
  3. Infer a mechanistic relationship when quantities are measured with noise
  4. Determine the impact of a policy
  5. Talk about the probability that something occurs
* The tools of the trade
  * <b>Randomization</b> - Concerned with balancing unobserved variables that may surprise inference of interest
  * <b>Random Sampling</b> - Concerned with obtaining data that is represented from the population of interest
  * <b>Sampling Models</b> - Concerned with creating a model for the sampling process
  * <b>Hypothesis testing</b> - Concerned with decision making in the process of uncertainty
  * <b>Confidence interval</b> - Concerned with quantifying uncertainty in estimations
  * <b>Probability models</b> - A formal connection between the data and a population of interest.
  * <b>Study design</b> - The process of designing a study to minimize the variance and bias
  * <b>Nonparametric bootstrapping</b> - The process of using the data to, with minimal probability model assumptions, create inferences
  * <b>Permutation</b> - randomization and exchangeability testing: the process of using data permutations to perform inferences

* Different thinking about probability leads to different styles of inference
  * There are several different styles of inference
    * <b>Frequency Probability</b> - The long run portion of time an event occurs in independent, identically distributed repetitions
    * <b>Frequency Style Inference</b> - Uses frequency interpretations of probabilities to control error rates
    * <b> Bayesian Probabilities </b> - Is the probability calculus of beliefs, given that beliefs follow certain rules
    * <b> Bayesian style inference </b> - The use of Bayesian probability representations of beliefs to perform inference

### Module 2 - Probability

* What is Randomness? Any process occurring without apparent deterministic patterns

#### Kolmogorov's Three rules
  * In order to satisfy our intuition about how probability should behave requires three rules

    * Consider an experiment with a random outcome. Probability takes an outcome from a random experiment and

      1. Assigns it a number between 0 and 1
      2. Requires the ability that something occurs is 1
      3. Requires that the probability of a union of any two sets of outcomes that have nothing in common (mutually exclusive) is the sum of their respective probabilities
  * <b> Mutually Exclusive </b> - Two events are mutually exclusive if both events cannot simultaneously occur

#### Consequences of the three rules
  * Let's get an example. <b>A</b> is the event if we get either a 1 or a 2 on the die. <b>A<sup>c</sup></b> is the event if the roll is 3,4,5 or 6. Since A and A<sup>c</sup> are mutually exclusive the probability that A or A<sup>c</sup> is

    * P(A) + P(A<sup>c</sup>)
  * Because of rule 2 we see that
    * 1 = P(A) + P(A<sup>c</sup>)
  * Below is a list of Kolmogorov's most useful outcomes
    1. The probability that nothing occurs is 0
    2. The probability that something occurs is 1
    3. The probability of something is 1 - the probability that the opposite will occur
    4. The probability of at least one or two things cannot simultaneously occur is the sum of their respective probabilities
    5. For any two events the probability that at least one occurs is the sum of their probabilities minus their intersections

#### Random variables
  * PMF (probability mass function) - used for discrete random variables
  * PDF (probability density function) - used for continuous random variables
  * Probability density functions are a way to mathematically characterize the population

#### Probability Mass Function
  * Probability Mass Function taken at a value corresponds to the probability that a random variable takes that value
  * To be a valid pmf of a function <b>P</b> must follow
    1. It must always be larger than or equal to 0
    2. The sum of the random variables the function can take must equal to 1

#### Probability Density Function
  * The central dogma of probability density function (PDF)
    * Areas under PDFs correspond to probabilities for that random variable
  * Not every function can be a valid PDF
    * Ex: if the function goes below 0, we would have negative probabilities
  * The following two rules tell us when a function is a valid PDF
    1. It must be larger than or equal to 0 everywhere
    2. The total area under it must be 1
  * Using R's built in function for the beta density
  ````
  pbeta(0.75,2,1)
  ````
  * In R, a prefix of p returns probabilities
    * d returns density
    * q returns quantile
    * r returns generated random variables

#### CDF and Survival Function
  * Certain areas of PMF and PDFs are so useful we give them names
    * <b> Cumulative Density Function </b> (CDF) of a random variable <b> x </b> returns the probability that the return variable is less than or equal to the value of <b> x </b>
      * Note that capital <b> X </b> denotes the random variable and lower case <b> x </b> shows the number we want to plug in
      *  The following descriptions the CDF
      ````
      F(x) = P(X <= x)
      ````
      * This applies regardless if the random variable is discrete or continuous
    * <b> Survival Function </b> of a random variable <b> X </b> is defined as the random variable is greater than the value <b> x </b>
    ````
    S(x) = P(X > x)
    ````
      * notice that S(x) = 1 - F(x) since the survival function evaluated at a particular value of x calculating the probability of the opposite event.

#### Quantiles
  * The 𝝰 quantile of a distribution with distribution function F is the point x<sub>𝝰</sub> so
  that
  ````
  F(x<sub>𝝰</sub>) = 𝝰
  ````
  * Ex.
    * If you know you were the 95<sup>th</sup> percentile on an exam you know that 95% of the people scored worse then you and 5% scored better
  * A <b>percentile</b> is simply a quantile with 𝝰 expressed as a percent rather than a proportion
    * ex. The population median is the 50th percentile
  * <b><u>Percentiles are not probabilities</u></b>
  * Quantiles have units

#### Conditional Probability pg - 49
* If we are given information about a random variable, it changes the probabilities associated with it
  * ex - https://xkcd.com/795/
* The idea of conditioning is taking away the randomness that we know to have occurred
* <b> Conditional Probability </b>
  * Let B be an event so that P(B) > 0. Then the conditional probability of an event A given that B has occurred is:
    ````
    P(A|B) = P(A⋂B)/P(B)
    ````
  * If A and B are unrelated (or independent) Then
  ````
  P(A|B) = P(A)P(B)/P(B) = P(A)
  ````

#### Baye's rule
  * Baye's rule allows us to reverse teh conditioning set provided that we know some marginal Probabilities
  * Bayes rule allows us to switch the conditioning event, provided a little bit of extra information
    * P(B|A)= P(A|B)P(B)/() P(A|B)P(B) + P(A|B<sup>c</sup>)P(B<sup>c</sup>))

#### Diagnostic Test Example pg 53
  * Let
    * (+) -> Positive Result
    * (-) -> Negative Result
    * D -> Subject has disease
    * D<sup>c</sup> -> Subject doesn't have disease

  * Sensitivity P(+|D)
    * Probability that test is positive given the subject has the disease
  * Specificity P(-|D<sup>c</sup>)
    * Probability that the test is negative given that the subject does not have the disease
  * The quantiles that we want to know are the predictive values
  * <u>Positive predictive value</u> - The probability the subject has the disease and the test is negative
    * P(D|+)
  * <u>Negative predictive value/u> - The probability the subject does not have the disease given the test is negative
    * P(D<sup>c</sup>|-)
  * Lastly, we will need the probability of the disease P(D)

#### Diagnostic Likelikhood Ratio
  * The diagnostic likelihood ratio summarizes the evidence of disease given a positive or negative text
  * <b>The diagnostic likelihood ratio of a positive test </b>, labeled DLR<sub>+</sub>
    * DLR<sub>+</sub> = P(+|D) / P(+|D<sup>c</sup>)
    * This is also
      * sensitivity / (1 - specificity)
  * <b> The diagnostic likelihood ratio of negative test </b>
    * DLR<sub>-</sub> = P(-|D) / P(-|D<sup>c</sup>)
    * which is also
      * (1 - sensitivity) / specificity

#### Independence
  * Statistical independence of events is the idea that the events are unrelated
  * Two events A and B are independent if
    * P(A⋂B) = P(A)P(B)
  * Equivalently
    * P(A | B) = P(A)
  * Note that
    * A is independent of B
    * A<sup>c</sup> is independent of B
    * A is independent of B<sup>c</sup>
    * A<sup>c</sup> is independent of B<sup>c</sup>

#### IID (independent and identical distributed) random variables
  * Random variables are said to be independent and identically distributed if they are
    1. independent
    2. Drawn from the same population

### Expected values
  * Expected values characterize a distribution
    * The most popular expected value, <b>the mean</b> balances the center of a density or mass function
    * Another expected value, the <b>variance</b>, characterizes how spread out a density is
    * Another expected value, the skewness, considers how much a density is pulled toward high or low values

### The population mean for discrete random variables
  * The mean(as an expected value for population) of a random variable is the center of its distribution
  * For discrete random variales X w/ PMF p(x), it is defined as
  ````
  E[X] = sum(x*p(x))
  ````
    * Where the sum is taken over the possible values of x

### The sample mean
  * The sample mean estimates the population mean
  * The sample mean is the center of mass of the data
  ````
  X = Sum(x*p(x))
  ````

### Continuous random variables
  * Facts about expected values
    * The expected value, or mean, height is center of population density of heights
    * What does distribution of averages look like?
      * The sample mean will be the same point as the sample of averages mean
    * The distribution of the estimator (sample mean) is centered at the distribution of what it's estimating (the population mean)
      * When expected value of an estimator is what its trying to estimate, we say that the estimator is unbiased

### Summary Notes
  * Expected values are properties of distributions
  * The population mean is the center of mass of the population
  * The sample mean is the center of mass of the observed data
  * The sample mean is an estimator of the population mean
  * The sample mean is unbiased, The population mean of its distribution is the mean of its trying estimate
  * The more data that goes into the sample mean, the more concentrated its density / mass function is around the population mean 
