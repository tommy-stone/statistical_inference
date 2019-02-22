## Quiz 1 answers

1. Consider influenza epidemics for two parent heterosexual families. Suppose that the probability is 17% that at least one of the parents has contracted the disease. The probability that the father has contracted influenza is 12% while the probability that both the mother and father have contracted the disease is 6%. What is the probability that the mother has contracted influenza?

  * 11%

2. A random variable, XX is uniform, a box from 0 to 1 of height 1. (So that its density is f(x) = 1f(x)=1 for 0\leq x \leq 10≤x≤1.) What is its 75th percentile?

  (Hints, look at lecture 2 around 21:30 and Chapter 5 Problem 5. Also, look up the help function for the qunif command in R.)

  * 0.75

3. You are playing a game with a friend where you flip a coin and if it comes up heads you give her XX dollars and if it comes up tails she gives you YY dollars. The probability that the coin is heads is pp (some number between 00 and 11.) What has to be true about XX and YY to make so that both of your expected total earnings is 00. The game would then be called “fair”.

  (Hints, look at Lecture 4 from 0 to 6:50 and Chapter 5 Problem 6. Also, for further reading on fair games and gambling, start with the Dutch Book problem ).

  * p/(1−p) = Y/X

4. A density that looks like a normal density (but may or may not be exactly normal) is exactly symmetric about zero. (Symmetric means if you flip it around zero it looks the same.) What is its median?

  * Median is zero

5.
```
  x <- 1:4
  p <- x/sum(x)
  temp <- rbind(x, p)
  rownames(temp) <- c("X", "Prob")
  temp
```

What is the median?

  * 3

6. A web site (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy tests cites the following: “When the subjects using the test were women who collected and tested their own samples, the overall sensitivity was 75%. Specificity was also low, in the range 52% to 75%.” Assume the lower value for the specificity. Suppose a subject has a positive test and that 30% of women taking pregnancy tests are actually pregnant. What number is closest to the probability of pregnancy given the positive test?

  * 0.4 (40%)
