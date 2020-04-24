#7 utilizando la base de datos COVID 19 genere un grafico de evoluvion de contagios , muertes,
#. y recuperados use los graficos de origen del r
bdc_22abr<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv",sep = ",")
sum(bdc_22abr$X1.22.20)
sum(bdc_22abr$X1.23.20)
i=5
j=1
aux=c(1:92)
while (i<=96) {
  aux[j]=sum(bdc_22abr[,i])
  i=i+1
  j=j+1
} 
barplot(aux)


names(bdc_22abr)
fechas<-c(names(bdc_22abr)[5:96])
fechas

names(aux)<-fechas
names(aux)
aux

plot(aux,type="l",col="red",xlab = "desde el 22 ene al 22 abr",
     ylab = "numero de infectados",main = "numero de infectados acumlados ")
#numero de infectados por dia desde el 22ene al 22 abr
i=6
j=2
aux2<-NULL
while (i<=96) {
  aux2[j]=sum(bdc_22abr[,i])-sum(bdc_22abr[,i-1])
  i=i+1
  j=j+1
} 
aux2[1]=sum(bdc_22abr[,5])
aux2

barplot(aux2,type="l",col="red",xlab = "desde el 22 ene al 22 abr",
     ylab = "numero de infectados",main = "numero de infectados por dia ",)plot(aux2,type="l",col="red",xlab = "desde el 22 ene al 22 abr",
        ylab = "numero de infectados",main = "numero de infectados por dia ",)

?abline
     