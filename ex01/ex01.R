library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)

# Leitura das linhas e colunas necessárias
df <- read_excel("01/ResiduosPerCapita.xlsx", skip = 10, n_max = 32)

# Renomear colunas
names(df)[names(df) == "Anos"] <- "País"
names(df)[names(df) == "┴ 2018"] <- "2018"

# Tornar um dataframe largo num mais comprido 
df <- df %>%
  pivot_longer(c("2004", "2018"), names_to = "Ano", values_to = "Resíduos")

# Filtrar os países que interessam
df <- filter(df, País %in% c("IS - Islândia", "NL - Países Baixos", "PL - Polónia"))

# Criar o plot
ggplot(df, aes(x = País, y = Resíduos, fill = Ano)) + 
  geom_col(position = "dodge") +
  ggtitle("Produção de resíduos per capita") +
  labs(y = "Resíduos (t)")