df<-airquality
dim(df)
sapply(df,class)
print("the missing values are as follows")
Xcolnames<-colnames(df)
x<-colSums(is.na(df))
print(x)
which(is.na(df))
sum(is.na(df))
df
df1<-as.data.frame(df)
for(i in 1:4)
  df1[,i]<-ifelse(is.na(df[,i]),mean(df[,i],na.rm=TRUE),df[,i])
df1
df2<-na.omit(df)
print(df2)
