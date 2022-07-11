# Exercício 02

#### <🇵🇹>

Os dados no ficheiro `EsperancaVida.xlsx` correspondem aos valores da esperança de vida à nascença (total e por sexo) em **31** países europeus, entre 1960 e 2020.
Com recurso à função `ggplot` represente, num mesmo gráfico temporal, as séries dos valores da esperança de vida à nascença das mulheres e dos homens, entre 2002 e 2019, nos países **FI - Finlandia**, **BE - Belgica** e **IS - Islandia**.

#### <🇬🇧>

The data in the file `EsperancaVida.xlsx` corresponds to the values of life expectancy at birth (total and by sex) in **31** European countries, between 1960 and 2020.
Using the `ggplot` function, show, in the same time graph, the series of life expectancy values at birth for women and men, between 2002 and 2019, in **FI - Finland**, **BE - Belgium** and **IS - Iceland**.

## Resultado

<img src="output.svg" alt="Output" width="600"/>

## Comentários

#### <🇵🇹>

Inicialmente, li apenas as linhas e colunas necessárias do ficheiro a analisar. De seguida, removi não só as colunas referentes a "Todos", como também as dos países que não são relevantes para o exercício.
Após renomear as colunas do _dataframe_, removi, também, as linhas referentes aos anos entre 1960 e 2001.

Tornei o _dataframe_ largo num mais comprido para facilitar a manipulação dos dados e criei o gráfico temporal, a partir do qual podemos concluir que a esperança média de vida tem vindo a aumentar, na generalidade, nos últimos anos, verificando-se uma vantagem significativa nos indivíduos do sexo feminino.

#### <🇬🇧>

Initially, I read only the necessary rows and columns from the input file. Next, I removed not only the columns referring to "Todos", but also those of the countries that are not relevant to the exercise.
After renaming the _dataframe_ columns, I also removed the rows referring to the years between 1960 and 2001.

I made the wide _dataframe_ longer to ease data manipulation and created the temporal graph, from which we can conclude that the average life expectancy has been increasing, in general, in recent years, with a significant advantage in female individuals.
