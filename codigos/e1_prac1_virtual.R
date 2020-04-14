#practica
#1 crear una funcion que devuelva los k 
#primeros numeros primos 
rm(list = ls())
s<-rep(1,6)
s
#funcion que indentifica los k primeros numeros primos
kprimos<-function(k){
  i=1
  n=2
  b<-rep(1,k)
  while (i<=k) {
    if(primo(n)==TRUE){
      b[i]=n
      i=i+1
    }
    #else{
    # i=i-1
    #}
    
    n=n+1
    
  }
  return(b)
}
#funcion "primo" dentifica si un vectores primo o no 
primo<-function(m){
  c=1
  for (i in 2:m) {
    if(m%%i==0){
      c=c+1    
    }
  }
  if(c==2){
    return(TRUE)
  }
  return(FALSE)
}
primo(5)
primo(8)
primo(16)
kprimos(1000)

