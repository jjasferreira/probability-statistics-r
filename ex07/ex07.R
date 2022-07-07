seed <- 720
n <- 69
size <- 33
p <- 0.04
m <- 1625

set.seed(seed)

a <- c()
for(i in 1:m){
    a[i] <- mean(rbinom(n, size, p))
}

# Valor observado
o <- mean(a)

# Valor teórico
t <- size * p

# Resultado final
result <- o - t
abs(result)