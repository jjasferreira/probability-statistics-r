# Exercício 03

#### <🇵🇹>

Os dados no ficheiro `QualidadeARO3.xlsx` correspondem às observações horárias de níveis de ozono, em microgramas por metro cúbico, recolhidas em **10** estações da rede [QUALAR](https://qualar.apambiente.pt), em 2020.
Com recurso à função `ggplot` represente, num único histograma, os valores dos níveis de ozono registados nas estações de **Paio-Pires** e **Laranjeiro-Almada** em 2020.

#### <🇬🇧>

The data in the file `QualidadeARO3.xlsx` corresponds to hourly observations of ozone levels, in micrograms per cubic meter, collected at **10** stations of the [QUALAR](https://qualar.apambiente.pt) network, in 2020.
Using the `ggplot` function, represent, in a single histogram, the values of the ozone levels recorded at the **Paio-Pires** and **Laranjeiro-Almada** stations in 2020.

## Resultado

<img src="output.svg" alt="Output" width="600"/>

## Comentários

#### <🇵🇹>

A partir da leitura inicial do ficheiro para um _dataframe_ e especificação dos tipos de dados nas colunas, filtrei apenas as colunas referentes às estações que nos interesssam.
"Alonguei" o _dataframe_, de forma a poder ter as estações numa coluna e os valores das observações considerados numa outra que se lhe correspondesse.

Finalmente, criei o histograma que corresponde aos dados do ficheiro.
Após análise, podemos concluir que as observações dos níveis de ozono em ambas as estações se assemelham e concentram em valores entre os 25 e 80 microgramas por metro cúbico.

#### <🇬🇧>

After the initial reading of the file to a _dataframe_ and specification of the data type in each column, I filtered the columns referring to the stations that interest us.
I "lengthened" the _dataframe_, in order to have the stations in one column and the considered values of the observations in another one.

Finally, I created the histogram that matches to the file data.
After analysis, we can conclude that the observations of ozone levels in both stations are similar and vary between 25 and 80 micrograms per cubic meter.
