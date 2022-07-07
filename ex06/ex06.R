library(ggplot2)

seed <- 1908
n1 <- 5
n2 <- 27
n3 <- 97
m <- 560
min <- 15
max <- 19

set.seed(seed)

for(i in list(n1, n2, n3)){
  df = data.frame()
  for(j in 1:m){
    df[j, 1] = mean(runif(i, min, max))
  }
  
  plot <- ggplot(df, aes(V1)) +
    geom_histogram(aes(y = ..count../sum(..count..))) +
    stat_function(fun = dnorm, colour = "red", args = list(mean = (min + max)/2, sd = sd(df$V1))) +
    scale_y_continuous(labels = scales::percent) +
    ggtitle(paste("n =",i)) + labs(x = "Distribuição da média", y = "Frequência relativa")
  print(plot)
}