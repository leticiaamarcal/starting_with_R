#carsDatasetName <- read.csv(".csv file")
cars <- read.csv("C:/Users/letic/Desktop/cars.csv") 
#attributes(cars.csv) 
attributes(cars) 
summary(cars)

library(nycflights13)
flights
attributes(flights)
summary(flights)
str(flights)


# vou definer o objeto a como 1 e o objeto b como 3

a <- 1
b <- 3


b=4
b
b=1,2,3
b=1/2/3
b=1;2;3
b
b=1\2\3
b=1,2,3
b=1;2;3
b=4
b\a
b/a
b <- sqrt(49)
b
c <- 1,2,3,4
c <- d(1,2,3,4)
a <- c(1,2,3,4,5)
a
a/c

#
is(cars)
is(a)
a <- 2
a[4]
a[7]
a[123]
a <- numeric(10)
a
a <-3
typeof(a)
a <- c(1,2,3,4,5)
a
a[3]
a
summary(cars)
summary(flights)
str(cars)
names(cars)
names(flights)
flights$month
flights$sched_dep_time
qqnorm(cars$speed.of.car)
plot(cars$speed.of.car,cars$distance.of.car)

#Vou definer um plot que ira comparar a distancia do frei do carro com 
# a velocidade do carro, na Table cars 

plot(cars$speed.of.car, cars$distance.of.car)

#como transformar tipo do atributos

flights$sched_dep_time<-as.character(flights$sched_dep_time)

#testando se virou character

summary(flights)

#virou

#voltando ao numerico

flights$sched_dep_time<-as.numeric(flights$sched_dep_time)

#funcionou?----

summary(flights)

#trocar o nome das colunas----
names(cars) <- c("Brand", "Speed", "Distance")
days(flights)<-c(day)
depDelay(flights)<-c(dep_delay)
distanceOfCar (cars) <- c(distance.of.car)
#nao funcionou - tentar amanha

#procurando missing values

summary(cars)
summary(flights)

#nao em cars, mas sim em flights

is.na(flights)

#excluindo na

na.exclude(flights$dep_time)

#subtituindo NA

flights$arr_delay[is.na(flights$arr_delay)]<-mean(flights$arr_delay,na.rm = TRUE)

#saber numero de NA

sum(is.na(flights))

#starting point used to create a sequence of random numbers

set.seed(123)

#separando o data set para treinar e testar

trainSize<-round(nrow(cars)*0.7) 

testSize<-nrow(cars)-trainSize

trainSize<-round(nrow(flights)*0.7) 

testSize<-nrow(flights)-trainSize

#saber quantas rows tem em cada parte

trainSize

testSize

#criar os sets

training_indices<-sample(seq_len(nrow(cars)),size =trainSize)

trainSet<-cars[training_indices,]

testSet<-cars[-training_indices,]

#criar modelo

predictionDistance<-lm(Distance~ Speed, trainSet)

#checar metricas

summary(predictionDistance)

#fazer predction

PredictionsName <- predict(predictionDistance,testSet)

#ver as predictioons

PredictionsName

#plotar pra ver se há uma boa relação

plot(PredictionsName, testSet$Distance)
