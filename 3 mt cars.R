data()
head(mtcars)
rownum<-nrow(mtcars)
rownum
colnum<-ncol(mtcars)
colnum
x<-data.frame(mtcars)
x
automatic<-0
manual<-0
for(i in 1:rownum)
  ifelse(x[i,9]==1, automatic<-automatic+1, manual<-manual+1)
automatic
manual
if(automatic>manual)
  print("More automatic")
print("more manual")
with(mtcars,scatter.smooth(hp,wt))
am_new<-as.integer(x$am)
am_new
cyl_new<-as.integer(x$cyl)
cyl_new
vs_new<-as.integer(x$vs)
vs_new
newmtc<-data.frame(am_new,cyl_new,vs_new)
newmtc
subset(mtcars,cyl<5)