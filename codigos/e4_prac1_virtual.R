#4.- REALICE UNA FUNCION PARA EL CALCULO DEL 
#TAMAÑO DE MUESTRA PARA EL MUESTREO ALEATORIO SIMPLE
#CONSIDERE LA MEDIA , EL MARGEN DE ERROR RELATIVO Y COEFICIENTES
#DE CONFIANZA
rm(list = ls())
calc_muestra<-function(dv,N,cc){
  #dv: DATOS DE LA VARIABLE
  #N: tamaño de la poblacion
  #cc:coefiente de confianza en porcentaje
  n<-nrow(dv)
  media<-sum(dv)/n
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
  
  v<-(k^2*var(dv)/erel^2*media)/(1+(k^2*var(dv))/(erel^2*media^2*N))
 
   return(v)
}
x<-rnorm(60,5,2)
x
y<-as.data.frame(x)
y
sum(y)/nrow(y)
calc_muestra(y,100,96)
calc_muestra(y,100000000000000,1)
var(y)

