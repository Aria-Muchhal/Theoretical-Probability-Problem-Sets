P=0
for(i in 1:1000000){
  X=runif(1,0,1)
  Y=runif(1,0,1)
  Z=abs(X-Y)
  if(Z<.2) {
    P=(P+1)
  }
}
print(P/1000000)