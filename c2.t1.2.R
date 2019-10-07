#script modificado 

#instalar pacote
install.packages("readr")

#livraria
library("readr")

#upload arquivo
IrisDataset <- read.csv("C:/Users/letic/Desktop/iris.csv")

#checar atributos
attributes(IrisDataset)

#entender/resumo do dados
summary(IrisDataset) 

#estrutura dos dados
str(IrisDataset)

#nomes das colunas
names(IrisDataset)

#entender atributo por atributo
is(IrisDataset)
is(IrisDataset$Sepal.Length)
is(IrisDataset$Sepal.Width)
is(IrisDataset$Petal.Length)
is(IrisDataset$Petal.Width)
is(IrisDataset$Species)

#histograma do sepal lenght
hist(IrisDataset$Sepal.Length)

#plot sepal lenght 
plot(IrisDataset$Sepal.Length)

#plot petal weidth x 
plot(IrisDataset$Petal.Width, IrisDataset$Petal.Length) #relação não linear

#qqnorm
qqnorm(IrisDataset$Petal.Length)

#transformar Species em numerico
IrisDataset$Species<- as.numeric(IrisDataset$Species)

#checar se funcionou 
is(IrisDataset$Species)

#definindo um random number (para poder comprara metricas)
set.seed(123)

#criando os sets para train and test
training_indices<-sample(seq_len(nrow(IrisDataset)),size =trainSize)
trainSize <- round(nrow(IrisDataset) * 0.7)
testSize <- nrow(IrisDataset) - trainSize

#checando tamanho da amostra
trainSize
testSize

#definindo random value
set.seed(405)

#criando os sets para train and test
training_indices<-sample(seq_len(nrow(IrisDataset)),size =trainSize)
trainSet <- IrisDataset[training_indices, ]
testSet <- IrisDataset[-training_indices, ]

#definindo random value
set.seed(75)
training_indices<-sample(seq_len(nrow(IrisDataset)),size =trainSize)
trainSet <- IrisDataset[training_indices, ]
testSet <- IrisDataset[-training_indices, ]

#criar modelo
LinearModel<- lm(Petal.Length~ Petal.Width, trainSet)

#métricas
summary(LinearModel)

#fazer predictions
prediction<-predict(LinearModel, testSet)
     
#ver as prediciotns
prediction
     