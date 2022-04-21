#Graficos de setores 
install.packages("vcd")
require("vcd")
sexo<- table(Arthritis$Sex)
par(mar = c(0.5,.5,.5,.5))
pie(sexo)
count<- table(Arthritis$Improved)
par(mfrow = c(1,2), mar = c(2,2,1.5,1))
barplot(count)
barplot(count)
plot(Arthritis$Improved)
plot(Arthritis$Improved, horiz=TRUE)
hist(Arthritis$Age)
par(mar = c(3,2,1,1))
plot(mtcars$wt, type = "l")
plot(mtcars$mpg, mtcars$wt)}
par(mar=c(.1,2,.1,1))
boxplot(mtcars$mpg)
par(mar=c(2,2,.1,1))
boxplot(Arthritis$Age ~ Arthritis$Sex)
par(mar = c(2,2,1.5,1))
barplot(count, main = "Titulos de Nobreza",
        sub = "Subtitulo da live",
        xlab = "nempk1 no eixo x",
        ylab = "4dot4 no eixo y",
        ylim = c(1,50), col = 1:3
        )
sexo<- table(Arthritis$Sex)        
par(mar = c(0.5,.5,.5,.5))        
pie(sexo,
    main = "Titulo do grafico",
    sub = "Subtitulo",labels = c("c","d"))  
plot(mtcars$wt, type = "1", col = "cyan", lwd=2,
     main = "")

plot(mtcars$wt, type = "l", col = "cyan",lwd=2,
     main = "Título do gráfico",sub = "Subtítulo",
     xlab = "Texto eixo x",ylab = "Texto eixo y")
plot(mtcars$mpg, mtcars$wt,
     xlab = "Variável preditora",
     ylab = "Variável resposta", main = "Título",
     xlim = c(10, 25), ylim = c(0, 10),
     cex.axis = 3,
     col.axis = "darkblue",
     font.axis = 3)

plot(mtcars$mpg,type = "b",
     xlab = "Variável preditora",
     ylab = "Variável resposta", main = "Título",
     cex.axis = 3,
     col.axis = "darkblue",
     font.axis = 3,
     xaxt = "n",
     bty = "]")

plot(rnorm(100,5,3), type = "l", lwd=2, lty = 1)
lines(rnorm(100), col = 2, lwd = 2, lty = 2)
abline(h = 7.5, # acrescenta linha simples
       lty = 3,
       col = "darkgreen")
legend(x = "topleft",
       legend = c("N(5,3)", "N(0,1)"),
       lty = c(1,2),
       lwd = 2,
       bty = "n")

