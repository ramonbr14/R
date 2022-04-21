#Exercícios
#1. Crie uma sequência com os primeiros vinte números pares. 
#   Nomeie os elementos do vetor que você acabou de criar com as 
#   primeiras 20 letras do alfabeto. Selecione os números onde o 
#   nome é uma vogal.

p <- seq.int(0,39,2)
names(p) <- letters[1:length(p)]
p
p[c("a","e","i","o","u")]

#2. A função diag tem vários usos, um dos quais é pegar um vetor 
#    como entrada e criar uma matriz quadrada com esse vetor na 
#    diagonal. Crie uma matriz de 11 por 11 com a sequência 
#    de 5 a 0 a 5 (ou seja, 5, 4, . . . , 1, 0, 1, . . . , 5).

vt1 <- 5:0
vt2 <- 1:5
vt3 <- 0
vpm <- 11
while(length(vt3)<vpm){
  if(length(vt3)<=1){
    vt3 <- vt1
  }else 
    vt3 <- c(vt3,vt2,vt1[-1])
}
vt3
vt3 <- vt3[1:vpm]
diag(vt3)
