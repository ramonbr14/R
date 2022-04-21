#Exercício 1
#Crie uma variável do tipo lista com três elementos contendo:
#   os sete primeiros números primos; 
#   os quatro primeiros pares de números primos gêmeos; 
#   números primos pares diferentes de 2. 
#   Dê nome aos três elementos.
primosgemeos <- list(c(3,5),c(5,7),c(11,13),c(17,19))
primos <- list(2,3,5,7,11,13,17)
primospares <- list()
alistar <- list(primos,primosgemeos,primospares)
names(alistar) <- c("Elemento1","Elemento2","Elemento3")
alistar


#Exercício 2
#O R vem com vários conjuntos de dados integrados, incluindo os famosos dados de íris (flores, não olhos),
# coletados por Anderson e analisados por Fisher na década de 1930. Digite iris para ver o conjunto de
# dados. Crie um novo data frame chamado “petalas”, extraído do conjunto de dados iris, com a terceira e
# quarta colunas; com as seis primeiras e seis últimas linhas. Renomeie as colunas do objeto “petalas” por
# “comprimento” e “largura”, respectivamente. Calcule a média das variáves “comprimento” e “largura”.

iris
petalas <- iris[3:4]
colnames(petalas) <- c("Comprimento", "Altura")
petalas <- rbind(head(petalas),tail(petalas))
petalas
mediaC <- colMeans(petalas[1:1])
mediaA <- colMeans(petalas[2:2])
somaC <- colSums((petalas[1:1]))
somaA <- colSums(petalas[2:2])
mediaA
mediaC
somaC
somaA
#Exercício 3
#Os conjuntos de dados beaver1 e beaver2 contêm temperaturas corporais de dois castores.

#a. Crie dois objetos contendo as três primeiras linhas de beaver1 e beaver2, respectivamente. Faça a
#mesclagem dos dois objetos usando a chave activ e guarde em castor. Renomeie as colunas de castor
#com letras do alfabeto, a partir da segunda coluna.

#b. Crie uma lista com os elementos petalas e castor, obtidos nos exercícios 1 e 2. Assegure-se de que os
#elementos da lista recebam os nomes de petalas e castor, respectivamente.

#c. A partir da lista criada no exercício 3 b, crie um vetor contendo o quinto elemento da coluna comprimento
#do elemento petalas e o oitavo elemento da penúltima coluna do elemento castor.

beaver1
beaver2
castor1 <-head(beaver1,n=3)
castor2 <-head(beaver2,n=3)
castor <-merge(castor1,castor2, by = "activ")
colnames(castor) <- c("activ",letters[1:length(castor)-1])
castor

juntos <- list(petalas,castor)
length(juntos)
names(juntos) <- c("Petalas","castor")
