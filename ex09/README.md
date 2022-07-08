# Exercício 09

Usando o R e fixando a semente em 868, gere m = 1100 amostras de dimensão n, onde n ∈ {100, 200, 300, …, 5000}, de uma população X, com distribuição Exponencial de valor esperado 1/λ = 1/0.38, i.e. X ∼ Exp(λ = 0.38).

Para cada uma das amostras geradas, construa um intervalo de confiança aproximado para λ. Considere o nível de confiança 1−α = 0.91.

Para cada valor de n, calcule a Média da Amplitude dos m = 1100 intervalos de confiança obtidos, MA(n).

Construa um gráfico colocando no eixo dos xx a dimensão da amostra, n, e no eixo dos yy o valor de MA(n).

## Resultado

<img src="output.svg" alt="Output" width="600"/>

## Comentários

Os resultados obtidos assemelham-se àquilo que seria de esperar, visto que a curva que relaciona as médias de amplitude com as dimensões respetivas das amostras conduzidas assume uma forma exponencial.
Para valores pequenos de dimensão da amostra, as médias entre todas as amplitudes dos intervalos de confiança são maiores, precisamente porque as amostras são de pequena dimensão.
Quanto maior for a dimensão da amostra, menores são as amplitudes dos intervalos de confiança.
