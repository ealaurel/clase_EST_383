rm(list=ls())
#6 emplenado la ENDSA muestre por año y departamneto
#el porcentraje de persona que fuman 
bd<-load(url("https://github.com/AlvaroLimber/EST-384/blob/master/data/endsa.RData?raw=true"))
#names(endsa)
#View(endsa)
#str(endsa)
#str(endsa[,4])
#eriquetas de cada variable (preguntas)
attributes(endsa)$var.labels
#porcentaje de personas que fuman por año 
t1<-table(endsa[,4],endsa[,15])
aux<-addmargins(t1,2)
totaño<-aux[,3]
totaño
t1<-t1/totaño
t1
#porcentaje de personas que fuman por departamento 
t2<-table(endsa[,2],endsa[,15])
aux2<-addmargins(t2,2)
totdept<-aux2[,3]
totdept
t2<-t2/totdept
t2


