#7 utilizando la base de datos COVID 19 genere un grafico de evoluvion de contagios , muertes,
#. y recuperados use los graficos de ggplot2
rm(list = ls())
install.packages("ggplot2")
library(ggplot2)
#descargando las bases de datos al dia de hoy 
#bdc=confirmados
#bdr=recuperaods
#bdd=muertos
bdc<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv",sep = ",")
bdr<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv",sep = ",")
bdd<-read.csv("https://github.com/CSSEGISandData/COVID-19/raw/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv",sep = ",")
ggplot(bdc,)