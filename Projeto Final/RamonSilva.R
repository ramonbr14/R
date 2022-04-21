#Tratamendo dos Dados
pima0 <- read.table("Pima.csv",head = TRUE,sep = ";", dec = ",",stringsAsFactors = FALSE)
pima <- pima0[1:332,-3]
pima$pele <- as.numeric(pima$pele)
class(pima$pele)
class(pima$IMC)
pima

#Medidas resumo: 
#média,
media <- apply(pima,2,mean)
media

#moda,
install.packages("DescTools")
library ("DescTools")
modapele <-sort(pima$pele,decreasing=TRUE)[1]
modaimc <-sort(pima$IMC,decreasing=TRUE)[1]
moda <- sapply(pima,Mode)
modapele
modaimc
moda

#mediana
mediana <- sapply(pima, Median)
mediana

#máximo e Minimo
maximominimo <- apply(pima,2,range)
maximominimo
#variância
variancia <- apply(pima,2,var)
variancia
#desvio padrão, 
desvio <- apply(pima,2,sd)
desvio
#amplitude total, 
rangemeu <- function(x){  diff(range(x))}
amplitudeT <- apply(pima, 2, rangemeu)
amplitudeT
#coeficiente de variação
coevat <- function(x){sd(x)/mean(x)*100}
coevaria <- apply(pima, 2,coevat)
coevaria
#Análise gráfica (interprete os gráficos)
install.packages("ggplot2")
library(ggplot2)
barplot(table(pima),xlab = "pele",ylab = "IMC")
hist(pima$pele,xlab = "pele",ylab = "IMC")
hist(pima$IMC,xlab = "pele",ylab = "IMC")
qqnorm(pima$pele,xlab = "pele",ylab = "IMC")
qqnorm(pima$IMC,xlab = "pele",ylab = "IMC")
boxplot(pima,xlab = "pele",ylab = "IMC")
plot(pima,xlab = "pele",ylab = "IMC")

#Análise de correlação 
A correlação apontada pelos graficos denota que a grossura da pele tem dados mais concentrados em 
torno da faixa de 20 a 40 dos indices


#Análise de regressão.
Não vejo nos graficos uma regreção linear e sim uma concentração dos valores entre 20 e 40
Não se apontando inicialmente para uma ligação linear



Codigos
pima0 <- read.table("Pima.csv",head = TRUE,sep = ";", dec = ",",stringsAsFactors = FALSE)
print(pima0)


pima <- pima0
#Media
length(pima)
class(pima$pele)
class(pima$IMC)
mediapele <- mean(pima$pele)
mediaimc <- mean(pima$IMC)
media <- apply(pima,2,mean)
dim(pima)
pima <- pima[1:332,-3]
pima$pele <- as.numeric(pima$pele)
mediapele
mediaimc
pima

