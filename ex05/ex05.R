seed <- 796
n <- 330
value <- 12
lambda <- 0.29

set.seed(seed)

dst <- rexp(n, lambda)
emp <- ecdf(dst)

# Valor observado
o = 1 - emp(value)

# Valor teórico
t = 1 - pexp(value, lambda)

# Resultado final
result = o - t
abs(result)