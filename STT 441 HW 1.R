matches<-data.frame(rep=1:1000000,match=NA)
for(i in 1:1000000){
birthdays<-sample(1:365, 36, replace=TRUE)
  matches$match[i]<-birthdays %>%
  duplicated() %>%
  max()
}
matches %>%
  summarize(proportion_matched=mean(match))