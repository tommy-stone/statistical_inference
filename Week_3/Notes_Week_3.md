### Gosset's t distribution
* The t distribution has thicker tails than the normal
* It's indexed by degreeds of freedom and it gets more like a standard normal as the degrees of freedom get larger
* It assumes that the underlying data are iid Gaussian with the result that
$$
\bar{X} - \mu \over S/\sqrt{n}
$$
* The t distribution confidence interval is then
$$
\bar{X} \pm t_{n-1}S/\sqrt{n}
$$

#### Summary
  * The t interval assumes the data is iid normal, though it is robust to this assumption
  * It works well with the data whenever the distribution of the data is robust and roughly mound shaped
  * Paired observations are often analyzed using the $t$ interval by taking the difference
  * For large degrees of freedom, the t quantiles become the same as the standard normal quantiles. Therefore the t distribution converges to the same interval as the CLT
  * For skewed distributions, the spirit of the t interval assumptions are violated
    * Also, for skewed distributions, it doesn't make a lot of sense to center the interval at the mean
    * In this case, consider taking logs or using different summary like the median
  * For highly discrete data, like binary, other intervals are available

#### Independent group t confidence intervals
  * Suppose we want to compare the mean blood pressure between two groups in a randomized trial. Those who received the treatment to those who received the trial
  * The randomization is useful for attempting to balance unobserved covariants that might contaminate our results
  * We now present methods for confidence intervals for comparing independent groups

#### Confidence interval
  * A $(1 - \alpha)$ * 100% confidence interval for the mean difference between groups, $\mu_y - \mu_x$, is
    $$
    \bar{Y} - \bar{X} \pm t_{n_x+n_y-2,1-{\alpha \over 2}}S_p({1 \over n_x} + {1 \over n_y})^{1/2}
    $$
  * The notation $t_{n_x+n_y-2,1-{\alpha \over 2}}$ is a quantile with $n_x + n_y -2$ degrees of freedom. The pooled variance estimator is
    $$
    S_p^2 = {(n_x -1)S^2_x + (n_y - 1)S^2_y \over n_x + n_y - 2}
    $$
  * This variance estimate is used if one is willing to assume a constant variance across the groups
  * It is a weighted average of the group-specific variances, with greater weight given to whichever has the larger sample size

#### Unequal Variance
  * Under unequal variance, our t interval becomes
  $$
  \bar{Y} - \bar{X} \pm t_{df}({S_x^2 \over n_x} + {S_y^2 \over n_y})^{1/2}
  $$
  * Where $t_df$ is the quantile calculated with degree of freedom
  $$
  df = {S^2_x/n_x + S^2_y/n_y \over (S^2_x/n_x)^2/(n_x - 1) + (S^2_y/n_y/(n_y-1))}
  $$
    * This will approximately be a 95% confidence interval
  * This works really well, so when in doubt, just assume unequal variance

#### Summary Notes
  * The t distribution is useful for small sample size comparisons
  * It technically assumes normality, but is robust to this assumption within limits
  * The t distribution gives rise to t confidence intervals
  * For other kinds of data, there are preferable small and large sample interval tests
    * For binomial data, there is  lots of ways to compare two groups
      * Relative risk, risk difference, odds ratio
      * Chi squared tests, normal approximations, exact tests etc. etc.

### Hypothesis Testing
  * To make decisions using data, we need to characterize the type of conclusions we can make
    * $H_0$ -> This is the null hypothesis or status quo
    * $H_{\alpha}$ or H_1 -> This is the alternative or research hypothesis. It is what we require evidence to conclude
  * The null hypothesis is assumed to be true and we require evidence to reject it and favor the alternative

#### Types of errors in hypothesis testing
  * The alternative hypothesis is typically of the form true mean being $<$,$>$, or $\ne$ to the hypothesis median
  * Note that there are four possible outcomes of our statistical decision process
    * Truth | Decide | Result
    * $H_0$ | $H_0$ | Correct, accept the null hypothesis
    * $H_0$ | $H_\alpha$ | Type I error
    * $H_\alpha$ | $H_\alpha$ | Correctly reject null hypothesis
    * $H_\alpha$ | $H_0$ | Type II error
  * We will perform hypothesis testing by forcing the probability of a type I error to b small

#### Building up a standard of evidence
  * A reasonable strategy would be to reject the null hypothesis if the sample mean, $\bar{X}$, was larger than some constant, C
  * Typically, C is chosen so that the probability of a Type I error, labeled $\alpha$, is 0.05
  * $\alpha$ = Type I error = Probability of rejecting the null hypothesis when, infact, the null hypothesis is correct
  * We want to choose C so that
  $$
  P(\bar{X} > C; H_0) = 0.05
  $$
  * If sample mean is 30, sample size is 100 and sd is 10
  $$
  {\sigma \over \sqrt{n}} = {10 \over \sqrt{100}} = 1
  $$
    * So $C = 30 + 1x1.645 = 31.645$
    * We reject $H_0$ when $\bar{X} \ge 31.645$
  * In general we don't convert C back to the original scale. Instead, we calculate how many standard errors the observed mean is from the hypothesized mean
    $$
    Z = {\bar{X} - \mu_0 \over s/\sqrt{n}}
    $$
    * This is called a Z-score
  * The Z-score is how many standard errors the sample mean is above the hypothesized mean
  * We reject if our Z-score is larger than 1.645, the 95<sup>th</sup> percentile, which controls the Type I error rate at 5%
  * We could write out a eneral rule for this alternative hypothesis as reject whenever
    $$
    \sqrt{n}(\bar{X} - \mu_0)/s \gt Z_{1-\alpha}
    $$
    * Where alpha is the desired type I error rate
  * Because the Type I error rate was controlled to be small, if we reject we know that one of the following occurred
    1. The null hypothesis is false
    2. We observe an unlikely event in support of the alternative even though the null is true
    3. Our modeling assumptions are wrong

#### General Rule
  * Consider $Z$ test for $H_0 : \mu = \mu_0$ vs
    * $H_1 : \mu \lt \mu_0$
    * $H_2 : \mu \ne \mu_0$
    * $H_3 : \mu \gt \mu_0$
    * Test statistic
    $$
    TS = {\bar{X} - \mu_0 \over s/\sqrt{n}}
    $$
    * We reject the null hypothesis when
      * $H_1 : TS \le Z_\alpha = -Z{1-\alpha}$
      * $H_2 : |TS| \ge Z_{1-\alpha/2}$
      * $H_3 : TS \ge Z_{1-\alpha}$

#### Summary Notes
  * $\alpha$ is low so if we reject $H_0$ then there is a low probability we have made an error
  * We have not fixed the probability of a type II error, $\beta$, which is why we say "reject $H_0$" and not "accept $H_0$"
  * The region of TS values for which you reject $H_0$is called rejection region
  * The $Z$ test requires the assumption of the CLT and for n to be large enough for it to apply
  * If n is small, then a Goseet's t  is performed w/ quantile n-n
  * The probability of rejecting the null hypothesis is called power
  * Power is used a lot to calculate sample sizes for experiment
