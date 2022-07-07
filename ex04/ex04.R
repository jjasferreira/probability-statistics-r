library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)

# Leitura do ficheiro
df <- read_excel("04/Utentes.xlsx")

# Criar o plot
ggplot(df, aes(x = Colesterol, y = IMC)) +
  geom_point(size = 0.75) +
  geom_smooth(formula = y ~ x, method = lm, size = 0.75, se = FALSE) +
  ggtitle("Dispersão entre IMC e Colesterol de 76 utentes") +
  expand_limits(x = 0, y = 0)