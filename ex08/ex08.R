seed <- 398
m <- 1350
n <- 1011
lambda <- 3.58
alpha <- 0.07

set.seed(seed)
ranges <- c()

for(i in 1:m) {
  sample <- rexp(n, lambda)
  mle = 1 / mean(sample)

  upper_b <- mle * (1 + (qnorm(1 - (alpha / 2), 0, 1)) / sqrt(n))
  lower_b <- mle * (1 - (qnorm(1 - (alpha / 2), 0, 1)) / sqrt(n))
  range <- upper_b - lower_b
  ranges[i] <- range
}

# Resultado final
result <- mean(ranges)
result