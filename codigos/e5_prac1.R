#crear una funcion que realice LA PRUeBA DE INDEPENDENCIA CHI CUADRADO
x<-rbinom(100,10,0.7)
y<-rbinom(100,10,0.7)
bd<-data.frame(x,y)
a<-table(bd$x,bd$y)
a
a1<-addmargins(a)
a1
#opción1
tf<-apply(a,1, sum)
tc<-apply(a,2, sum)
tf
N<-sum(a)
esp<-matrix(NA,length(tf),length(tc))
for(i in 1:length(tf)){
  for(j in 1:length(tc)){
    esp[i,j]<-tf[i]*tc[j]/N
  }
}
esp
#opción2
E<-(tf %*% t(tc))/N
#calcular el estad�?stico
xx<-sum(((a-E)^2)/E)
xx
qchisq(0.95,(length(tf)-1)*(length(tc)-1))
qchisq(0.05,(length(tf)-1)*(length(tc)-1),lower.tail = F)
#pvalor
pchisq(xx,(length(tf)-1)*(length(tc)-1),lower.tail = F)
chisq.test(a)

#funcion 
prueba_chi2<-function(bda,nc=95){
  tf<-apply(bda,1, sum)
  tc<-apply(bda,2, sum)
  N<-sum(a)
  #valores esperados
  E<-(tf %*% t(tc))/N
  #calculando ele staditico
  est_cal<-sum(((a-E)^2)/E)
  #valor de tablas
  val_tablas<-qchisq(nc/100,(length(tf)-1)*(length(tc)-1))
  #pvalor
  p_valor<-pchisq(est_cal,(length(tf)-1)*(length(tc)-1),lower.tail = F)
  vec<-table(est_cal,val_tablas,p_valor)
  #row.names(vec)<-c("estadistico_cal","val_tablas","p_valor")
  print("Prueba de independencia Chi Cuadrado")
  return(vec)
  #print(est_cal)
  #print(val_tablas)
  #print(p_valor)
}
prueba_chi2(a)
      