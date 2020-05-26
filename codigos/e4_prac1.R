#realice una funcion para el calculo para le tamaño de muestra 
#para el muestreo aleatorio simple, considere la media, el margen de 
#error relativoy coeficientes de confianza
tmuestra_mu<-function(mer,cv,confianza=0.95){
  z<-qnorm(1-(1-confianza)/2) 
  n0<-(z*cv/mer)^2
  return(n0)
}
tmuestra_mu(mer=0.10,cv=1)
#opcion 2, tomar en cuanta N
#n=n0/(1+n0/N)
tmuestra_mu2<-function(mer,cv,confianza=0.95,N){
  z<-qnorm(1-(1-confianza)/2) 
  n0<-(z*cv/mer)^2
  n<-n0/(1+n0/N)
  return(n)
}
tmuestra_mu2(mer=0.1,cv=1,N=1000)
#opcion 3, ambos casos
tmuestra_mu3<-function(mer,cv,confianza=0.95,f=FALSE,N){
  z<-qnorm(1-(1-confianza)/2) 
  n0<-(z*cv/mer)^2
  if(f==T){
    n<-n0/(1+n0/N)
    return(n)
  } else {
    return(n0)
  }
}
tmuestra_mu3(mer=0.1,cv=1,f=F)
tmuestra_mu3(mer=0.1,cv=1,f=T,N=1000)

