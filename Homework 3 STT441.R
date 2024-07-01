P=0
for(i in 1:1000000){
  X=sample(1:30000,30000, replace=FALSE)
  Y=permutations(30000,1,X)
  Z=min(abs(X-Y),na.rm=FALSE)
  if(Z==0) {
    P=(P+1)
  }
}
print(P/1000000)