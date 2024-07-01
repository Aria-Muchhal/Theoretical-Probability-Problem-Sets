m=100
rbinom(1,64,.3)
dat=rbinom(m,64,.3)
n=64
Sn=matrix(0,n,1)
for (i in 1:n) {
  tmp=rbinom(m,64,.3)
  Sn[i,1]=sum(tmp)
  cat(i,'\n')
}
print(sum(tmp)/(n*m))
print(mean(dat)/n)