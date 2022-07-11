# Exercício 04

#### <🇵🇹>

O ficheiro `Utentes.xlsx` contém dados relativos a um conjunto de variáveis (Idade, Colesterol, IMC - Índice de Massa Corporal, TAD - Tensão Arterial Diastólica) associadas a **76** utentes de um serviço de saúde.
Construa um gráfico de dispersão entre as variáveis **IMC** e **Colesterol**.

#### <🇬🇧>

The `Utentes.xlsx` file contains data related to a set of variables (Idade - Age, Colesterol - Cholesterol, IMC - Body Mass Index, TAD - Diastolic Blood Pressure) associated with **76** users of a health service.
Build a scatter plot between the variables "**IMC**" and "**Colesterol**".

## Resultado

<img src="output.svg" alt="Output" width="600"/>

## Comentários

#### <🇵🇹>

A importação do ficheiro `Utentes.xlsx` para um _dataframe_ foi suficiente para a representação da informação num gráfico de dispersão, sem que fosse necessário tratamento adicional dos dados.
A linha azul representa a aproximação dos pontos dispersos a um declive constante.
A expansão dos limites do gráfico permite que os dados sejam analisados de forma mais intuitiva.
Concluimos que é muito provável que exista uma relação entre as variáveis IMC e Colesterol, sendo que o crescimento de uma conduz, com grande probabilidade, ao crescimento da outra.

#### <🇬🇧>

Turning the `Utentes.xlsx` file into a _dataframe_ was enough to represent the information in a scatter plot, without the need for additional data processing.
The blue line represents the approximation of the scattered points to a constant slope.
Expanding the boundaries of the graph allows data to be analyzed more intuitively.
We conclude that it is very likely that there is a relationship between the variables "IMC" and "Colesterol", and the growth of one leads, with great probability, to the growth of the other.
