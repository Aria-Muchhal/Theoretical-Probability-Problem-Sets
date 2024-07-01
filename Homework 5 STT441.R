P=0
for(i in 1:1000000){
  x<-c(rep(c(2:9,"T","J","Q","K","A"),4),rep("H",13),rep("D",13),rep("S",13),rep("C",13))
  deck<-matrix(x,nrow=52,ncol=2)
  cards<-apply(format(deck),1,paste,collapse="")
  cardhand<-function(n) sample(cards,n,rep=FALSE)
  myhand<-cardhand(5)
  substr(myhand,1,1)
  table(substr(myhand,1,1))
  unname(table(substr(myhand,1,1)))
  sum(unname(table(substr(myhand,1,1)))==2)
  test1<-sum(unname(table(substr(myhand,1,1)))==2)
  test2<-sum(unname(table(substr(myhand,1,1)))==3)
  if(test1==TRUE && test2==TRUE) {
    P=(P+1)
  }
}
print(P/1000000)