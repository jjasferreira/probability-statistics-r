library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)

# Leitura do ficheiro
df <- read_excel("03/QualidadeARO3.xlsx",
  col_types = c("numeric", "numeric", "numeric", "numeric", "numeric",
                "numeric", "numeric", "numeric", "numeric", "numeric"))

# Manter apenas colunas que interessam
df <- df[names(df) %in% c("Laranjeiro-Almada", "Paio-Pires")]

# Tornar um dataframe largo num mais comprido 
df <- df %>%
  pivot_longer(c("Laranjeiro-Almada", "Paio-Pires"), names_to = "Estação", values_to = "Ozono")

# Criar o plot
ggplot(df, aes(x = Ozono, group = Estação, fill = Estação)) + 
  geom_histogram(color = "darkslategrey") +
  ggtitle("Níveis de ozono por estação em 2020") +
  labs(x = expression(paste("Ozono (μg/m"^"3", ")")), y = "Observações")
