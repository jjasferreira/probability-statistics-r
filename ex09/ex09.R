library(ggplot2)

seed <- 868
m <- 1100
lambda <- 0.38
alpha <- 0.09

set.seed(seed)
v <- c()
df <- data.frame()

for(i in 1:50){
  for(j in 1:m){
    n <- i * 100
    sample <- rexp(n, lambda)
    mle = 1 / mean(sample)

    upper_b <- mle * (1 + (qnorm(1 - (alpha / 2), 0, 1)) / sqrt(n))
    lower_b <- mle * (1 - (qnorm(1 - (alpha / 2), 0, 1)) / sqrt(n))
    v[j] <- upper_b - lower_b
  }
  df[i, 1] <- mean(v); df[i, 2] <- n
}

ggplot(df, aes(x = V2, y = V1)) +
  geom_point(size = 1) + labs(x = "n = Dimensão da amostra", y = "Média da amplitude") +
  ggtitle("Média da amplitude de 1100 intervalos de confiança para cada n")