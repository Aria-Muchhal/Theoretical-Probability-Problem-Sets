m=1000
rbinom(1,1,.5)
dat=rbinom(m,1,.5)
n=500
Sn=matrix(0,n,1)
for (i in 1:n) {
  tmp=rbinom(m,1,.5)
  Sn[i,1]=sum(tmp)
  cat(i,'\n')
}
hist(Sn, breaks=50)

n=1000
Sn=matrix(0,n,1)
for (i in 1:n) {
  tmp=runif(m,0,1)
  Sn[i,1]=sum(tmp)
  cat(j,'\n')
}
hist(Sn, breaks=50)
