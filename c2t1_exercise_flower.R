#ler arquivo
exercise <- read.csv("C:/Users/letic/Desktop/exercise.csv") 

#procurando NA
summary(exercise)

#criar um objeto para fazer as alterações e não mudar o arquivo original
flowers <- exercise

#modificar o novo objeto. sempre mandar a informação para dentro dele. ! significa 
#o que você não quer. Então é o dataset todo, SEM os missing values da coluna species 
flowers <- flowers[!is.na(flowers$Species),]

#substituir por média os missing values em colunas numéricas
flowers$Petal.Width[is.na(flowers$Petal.Width)]<-mean(flowers$Petal.Width,na.rm = TRUE)

#fazer o mesmo nas colunas seguintes que têm missing values
flowers$Petal.Length[is.na(flowers$Petal.Length)]<-mean(flowers$Petal.Length,na.rm = TRUE)

#fazer o mesmo nas colunas seguintes que têm missing values
flowers$Sepal.Width[is.na(flowers$Sepal.Width)]<-mean(flowers$Sepal.Width,na.rm = TRUE)

#fazer o mesmo nas colunas seguintes que têm missing values
flowers$Sepal.Length[is.na(flowers$Sepal.Length)]<-mean(flowers$Sepal.Length,na.rm = TRUE)

#mudar nome da coluna Species
names(flowers) <- c("Sepal.Length", "Sepal.Width", "Petal.Lenght", "Petal.Width", "Plants")

#Boxplotar as colunas e encontrar outliers - Sepal Lenght
boxplot(flowers$Sepal.Length)

#saber o valor dos outliers
boxplot(flowers$Sepal.Length)$out

#colocando o outlier num vetor
outliers <- boxplot(flowers$Sepal.Length, plot=FALSE)$out

#checando
print(outliers)

#achando outliers
flowers[-which(flowers$Sepal.Length %in% outliers),]

#informação: quando quiser eliminar linhas, colunas etc:
#use ! quando se trata de TRUE or FALSE (essa linha contém um outlier? T or F)
#Quando se tratar de número, use - para eliminar (linha x)

#colocar dentro do flowers
flowers <- flowers[-which(flowers$Sepal.Length %in% outliers),]

#eliminar linha é outra opção - não usar agora, senão exclui duas vezes
flowers <- flowers[-110,]

#boxplotar pra checar se está certo
boxplot(flowers$Sepal.Length)

#Boxplotar as colunas e encontrar outliers - Sepal Width
boxplot(flowers$Sepal.Width)

#saber o valor dos outliers
boxplot(flowers$Sepal.Width)$out

#colocando o outlier num vetor
outliers <- boxplot(flowers$Sepal.Width, plot=FALSE)$out

#checando 
print(outliers) #4,4 mostra como outlier, mas achei melhor não tirar,
#porque a amostra não é grande e são 3 linhas com esse mesmo valor
#e não está longe do valor anterior

#excluir linha outlier - tomar cuidado, porque não está congekado como ID
#se você eliminar uma linha antes do 28, o 27 passa a ser 27 e aí você elimina
#a linha errada
flowers <- flowers[-28,]

#checar boxsplot
boxplot(flowers$Sepal.Width)

#não é possível colocar o outlier em um objeto e querer subtrair do data frame
#pq é uma linha contra um data frame maior. R não vai saber qual das rows eliminar

#Boxplotar as colunas e encontrar outliers - Petal Lenght
boxplot(flowers$Petal.Lenght)

#saber o valor dos outliers
boxplot(flowers$Petal.Lenght)$out

#colocando o outlier num vetor
outliers <- boxplot(flowers$Petal.Length, plot=FALSE)$out

#checando
print(outliers)

#achando outliers
flowers[-which(flowers$Petal.Length %in% outliers),]

#colocar dentro do flowers
flowers <- flowers[-which(flowers$Petal.Length %in% outliers),]

#eliminar linha é outra opção - não usar agora, senão exclui duas vezes
flowers <- flowers[-110,]

#boxplotar pra checar se está certo
boxplot(flowers$Sepal.Length)

#Boxplotar as colunas e encontrar outliers - Sepal Width
boxplot(flowers$Sepal.Width)

#saber o valor dos outliers
boxplot(flowers$Sepal.Width)$out

#colocando o outlier num vetor
outliers <- boxplot(flowers$Sepal.Width, plot=FALSE)$out

#checando 
print(outliers)

