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

# 正規分布
u=171.9
sigma=5.645
x=180
1/(sqrt(2*pi)*sigma)*exp(-((x-u)^2)/(2*(sigma^2)))
dnorm(x,u,sigma)

# t分布による推定
bread=c(102,108,110,103,99,107,103,98,101,100)
bread
t.test(bread)

# numeric型
a=c(1,2,3,4)
a
class(a)

# character型
b=c("a","b",3)
b
class(b)

# matric型（TODO）
c=matrix(0,3,4)
c=rbind(c(1,2,3,4),c(4,5,6,7))
c[,2]
c[2,]
class(c)

#dataframe型（TODO）
d=data.frame(a=c(1,2,3,4),b=c(4,5,6,7),c(8,9,10,11))
d$a
class(d)

# dplyrパッケージのインストール（TODO）
install.packages("dplyr")

# dplyrパッケージの有効化
library(dplyr)

# csvファイルの読み込み
kakeibo = read.csv("https://raw.githubusercontent.com/futurebridge/RBooks/master/chap1/family.csv", header=TRUE)

# dplyrデータ形式に変換
kakeibo.d = tbl_df(kakeibo)

# 支払先をもとに金額を集計
summarise(group_by(kakeibo.d, 支払先), 合計=sum(金額))

# 支出科目をもとに金額を集計
summarise(group_by(kakeibo.d, 支出科目), 合計=sum(金額))
 









