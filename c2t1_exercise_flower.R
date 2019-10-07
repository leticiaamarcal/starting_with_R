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
