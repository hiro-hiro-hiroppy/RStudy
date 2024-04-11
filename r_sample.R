weather=read.csv("data/data.csv", header=TRUE)
summary(weather)
mean(weather$min)
var(weather$min)
sd(weather$min)
h=hist(weather$min,main="ヒストグラム",xlab="最低気温",col="yellow")

n=length(h$counts)
class_names=NULL
for(i in 1:n) {
  class_names[i]=paste(h$breaks[i], "～", h$breaks[i+1])
}
frequency_table=data.frame(クラス=class_names,頻度=h$counts,相対比=h$counts/length(weather$min))
frequency_table

u