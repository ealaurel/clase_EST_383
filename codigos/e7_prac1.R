#7 utilizando la base de datos COVID 19 genere un grafico de evoluvion de contagios , muertes,
#. y recuperados use los graficos de origen del r
#descargando las bases de datos al dia de hoy 
#bdc=confirmados
#bdr=recuperaods
#bdd=muertos
bdc<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv",sep = ",")
bdr<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv",sep = ",")
bdd<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv",sep = ",")

#graficos acumulados hasta la fecha
i=5
j=1
tc=NULL
tr=NULL
td=NULL
while (i<=dim(bdr)[2]) {
  tc[j]=sum(bdc[,i])
  tr[j]=sum(bdr[,i])
  td[j]=sum(bdd[,i])
  i=i+1
  j=j+1
} 

names(bdc_22abr)
fechas<-c(names(bdc_22abr)[5:96])
fechas

names(aux)<-fechas
names(aux)
aux

plot(tc,type="l",col="red",xlab = "desde el 22 ene hasta la fecha",
     ylab = "numero de confirmados",main = "confirmados,recuperados,muertes acumulados ")
points(tr,type="l",col="green",xlab = "desde el 22 ene al 22 abr",
     ylab = "numero de confirmados",main = "numero de infectados acumlados ")
points(td,type="l",col="black",xlab = "desde el 22 ene al 22 abr",
     ylab = "numero de confirmados",main = "numero de infectados acumlados ")
legend(x = "left", legend = c("confirmados", "recuperados","muertes"),
       fill = c("red", "green","blue"))
#graficos por dia desde el 22ene hasta la fecha
k=6
l=2
tc2=NULL
tr2=NULL
td2=NULL
while (k<=dim(bdr)[2]) {
  tc2[l]=sum(bdc[,k])-sum(bdc[,k-1])
  tr2[l]=sum(bdr[,k])-sum(bdr[,k-1])
  td2[l]=sum(bdd[,k])-sum(bdd[,k-1])
  k=k+1
  l=l+1
} 
tc2[1]=sum(bdc[,5])
tr2[1]=sum(bdr[,5])
td2[1]=sum(bdd[,5])


barplot(tc2,col="red",xlab = "desde el 22 ene a la fecha",
     ylab = "numero de confirmados",main = "casos confirmados por dia ")
barplot(tr2,col="green",xlab = "desde el 22 ene a la fecha",
        ylab = "numero de recuperados",main = "casos recuperados por dia ")
barplot(td2,col="blue",xlab = "desde el 22 ene a la fecha",
        ylab = "numero de muertes",main = "muertes por dia ")



plot(tc2,col="red",type="l",xlab = "desde el 22 ene a la fecha",
        ylab = "numero de confirmados",main = "frecuencias ")
points(tr2,col="green",type="l",xlab = "desde el 22 ene a la fecha",
        ylab = "numero de recuperados",main = "casos recuperados por dia ")
points(td2,col="blue",type="l",xlab = "desde el 22 ene a la fecha",
        ylab = "numero de muertes",main = "muertes por dia ")
legend(x = "left", legend = c("confirmados", "recuperados","muertes"),
       fill = c("red", "green","blue"))
