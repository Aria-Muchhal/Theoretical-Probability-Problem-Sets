P=0
for(i in 1:1000000){
  X=c(1,1,1,2,2,2,4,4,4)
  Y=sample(X,3,replace=TRUE)
  Z=sum(Y,na.rm=FALSE)
  if(Z==7) {
    P=(P+1)
  }
}
print(P/1000000)