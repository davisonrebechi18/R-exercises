# Exercícios Fundamentos 1

# Exercício 1 -Crie um vetor com 12 números inteiros
vetor1 = c(1:12)
vetor1

# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz1 = matrix (c(1:16), nr = 4, ncol= 4)
matriz1

# Exercício 3 -Crie uma lista unindo o vetor e matriz criados anteriormente
list1 = list(vetor1, matriz1)
list1

# Exercício 4 -Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
df <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
class(df)
df

# Exercício 5 -Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(df) = c("config", "esfc", "chang")
df

# Exercício 6 -Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris, imprima um resumo do dataset.
iris
dim(iris)
summary(iris)

# Exercício 7 -Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris[1:2])

# Exercício 8 -Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
df1 <- data.frame()
class(df1)

df1 <- iris
head(df1)

subset.data.frame(df1, Sepal.Length > 7, select = c(Sepal.Length) )

# Exercícios 9 (Desafio) -Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a função slice()
install.packages('dplyr')
library(dplyr)
?slice()

dfiris <- data.frame()
class(dfiris)

dfiris <- iris
head(dfiris)
dfiris <- slice(dfiris, 1:15)
dfiris

# Exercícios 10 -Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch()para aprender como usar a função filter
RSiteSearch('filter')
filter(dfiris, Sepal.Length > 6)