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
  * <b>Nonparametric boostrapping</b> - The process of using the data to, with minimal probability model assumptions, create inferences
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
    4. The probability of at least one or two thing cannot simultaneously occur is the sum of their respective probabilities
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
