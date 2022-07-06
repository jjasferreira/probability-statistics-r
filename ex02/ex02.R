library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)

# Leitura das linhas e colunas necessárias
df <- read_excel("02/EsperancaVida.xlsx", skip = 8, n_max = 63)

# Remover colunas referentes a "Todos" e aos países desnecessários
df <- df[-c(2:35, 36:40, 42:49, 51:65, 67:74, 76:83, 85:99, 101:103)]

# Renomear colunas
colnames(df) <- c("Ano", "Bélgica (H)", "Finlândia (H)", "Islândia (H)",
                  "Bélgica (M)", "Finlândia (M)", "Islândia (M)")

# Remover linhas referentes aos anos entre 1960 e 2001
df <- filter(df, Ano %in% c(2002:2019))

# Tornar um dataframe largo num mais comprido 
df <- df %>%
  pivot_longer(!"Ano", names_to = "País", values_to = "Esperança")

# Criar o plot
ggplot(df, aes(x = Ano, y = Esperança, group = País, color = País)) +
  geom_point(size = 1) + geom_line() +
  ggtitle("Esperança de vida à nascença por sexo")
