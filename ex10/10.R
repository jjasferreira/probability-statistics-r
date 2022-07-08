library(ggplot2)

seed = 719
m <- 1000
lambda <- 1.02
lambdac <- 0.01
alpha <- 0.08
e <- 0.20

set.seed(seed)
p <- c()
c <- c()
df <- data.frame(matrix(ncol = 3, nrow = 0))
colnames(df) <- c("Média", "Dimensão", "Estado")

for(i in 1:25){
  for(j in 1:m){
    n <- i*100
    pure <- rexp(n*(1-e), lambda)
    contaminated <- rexp(n*e, lambdac)
    
    mle = 1 / mean(pure)
    upper_b <- mle * (1 + (qnorm(1 - (alpha/2), mean = 0, sd = 1)) / sqrt(n))
    lower_b <- mle * (1 - (qnorm(1 - (alpha/2), mean = 0, sd = 1)) / sqrt(n))
    p[j] <- upper_b - lower_b

    mle = 1 / mean(contaminated)
    upper_b <- mle * (1 + (qnorm(1 - (alpha/2), mean = 0, sd = 1)) / sqrt(n))
    lower_b <- mle * (1 - (qnorm(1 - (alpha/2), mean = 0, sd = 1)) / sqrt(n))
    c[j] <- upper_b - lower_b
  }
  df[nrow(df) + 1,] = c(mean(p), n, "Puro - MA(n)")
  df[nrow(df) + 1,] = c(mean(c), n, "Contaminado - MAc(n)")
}

df$Média <- as.double(df$Média)
df$Dimensão <- as.double(df$Dimensão)

ggplot(df, aes(x = Dimensão, y = Média, group = Estado, color = Estado)) +
  geom_point(size = 2) + labs(x = "n = Dimensão da amostra", y = "Média da amplitude") +
  geom_line() + ggtitle("Média da amplitude de 1000 intervalos de confiança para cada n")