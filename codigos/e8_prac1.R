#7 utilizando la base de datos COVID 19 genere un grafico de evoluvion de contagios , muertes,
#. y recuperados use los graficos de ggplot2
rm(list = ls())
#install.packages("ggplot2")
library(ggplot2)
#descargando las bases de datos al dia de hoy 
#bdc=confirmados
#bdr=recuperaods
#bdd=muertos
bdc<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv",sep = ",")
bdr<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv",sep = ",")
bdd<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv",sep = ",")

#conviertiendo a frecuencias absolutas por dia de los acumulados 
i=1
l=1
j=6
k=6
bdc_n=NULL
bdr_n=NULL
bdd_n=NULL
while (i<=dim(bdc)[1]) {
  while (j<=dim(bdc)[2]) {
    bdc_n[i,j]=bdc[i,j]-bdc[i,j-1]
    #bdr_n[l,k]=bdr[i,j]-bdr[i,j-1]
    bdd_n[i,j]=bdd[i,j]-bdd[i,j-1]
    j=j+1
    #k=k+1
  }
  i=i+1
  #l=l+1
}
bdc_n[,c(1:5)]=bdc[,c(1:5)]
bdc_n[,c(1:5)]=bdc[,c(1:5)]
bdc_n[,c(1:5)]=bdc[,c(1:5)]

bdc[1,5]
dim(bdr)
dim(bdc)[1]
bdc[1,6]-bdc[1,5]
