#4.- REALICE UNA FUNCION PARA EL CALCULO DEL 
#TAMAÑO DE MUESTRA PARA EL MUESTREO ALEATORIO SIMPLE
#CONSIDERE LA MEDIA , EL MARGEN DE ERROR RELATIVO Y COEFICIENTES
#DE CONFIANZA
calc_muestra<-function(dv,N,cc){
  #dv: DATOS DE LA VARIABLE
  #N: tamaño de la poblacion
  #cc:coefiente de confianza en porcentaje
  media<-mean(dv)
  n<-nrow(dv)
  s2<-var(dv)
  f<-n/N
  var_med<-(1-f)*s2/n
  alfa<-1-cc/100
  #calculando el valor de k 
  if(n>=30){
    k<-qnorm(1-alfa/2)
  }else{
    k<-qt(1-alfa/2,n-1)
  }
  #error relativo
  erel<-k*sqrt(var_med)/media
  
}

