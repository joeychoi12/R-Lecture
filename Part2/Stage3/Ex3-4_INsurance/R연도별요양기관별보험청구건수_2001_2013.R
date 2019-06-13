#예제 3-4 냔도별 기관별 보험 청구 건수 분석 후 그래프 
setwd("d:/workspace/R_Data_Analysis/Part2/Stage3/Ex3-4_INsurance")
library(ggplot2)
library(plotly)

insurance_file <- read.csv("연도별요양기관별보험청구건수_2001_2013.csv",header=F)
count <- read.csv("연도별요양기관별보험청구건수_2001_2013_세로.csv",stringsAsFactors=FALSE)
head(insurance_file)
colname <- count$년도
colname
count

v1<-count[,2]/100000
v2<-count[,3]/100000
v3 <- count[,4]/100000
v4 <- count[,5]/100000
v5 <- count[,6]/100000
v6 <- count[,7]/100000
v7 <- count[,8]/100000
v8 <- count[,9]/100000
v9 <- count[,10]/100000
v10 <- count[,11]/100000

#### Other way to put in variables through for loop
v <- array(c(1:10))
for (i in 1:10 ) {
  v <- count[, (i+1))] / 100000
  paste (v+i
}

for (in in 1:10) {
  v[i, k] <- count[k, (i+1)] /100000
}
v[1,]


plot(v1, xlab = "",ylab = "", ylim = c(0,6000),axes=FALSE,
     col="violet",type="o",lwd=2,
     main = paste("연도별 요양 기관별 보험 청구 건수(단위:십만건","\n",
                  "출처:건강보험심사평가원"))
axis(1, at=1:10, label= colname,las=2)
axis(2,las=1)
lines(v2,col="blue",type="o",lwd=2)
lines(v3 ,col="red",type="o",lwd=2)
lines(v4 ,col="black",type="o",lwd=2)
lines(v5 ,col="orange",type="o",lwd=2)
lines(v6 ,col="green",type="o",lwd=2)
lines(v7 ,col="cyan",type="o",lwd=2)
lines(v8 ,col="yellow",type="o",lwd=2)
lines(v9 ,col="brown",type="o",lwd=2)
lines(v10 ,col="pink",type="o",lwd=2)
abline(h=seq(0,6000,500),v=seq(1,100,1),lty=3,lwd=0.2)
col <- names(count[1,2:10])
colors <- c('violet','blue','red','black','orange','green','cyan','yellow','brown','pink')
legend(1,6000,col,cex = 0.8, col=colors,lty=1,lwd=2,bg="white")


for(i in 1:10) {
  v[i,] <- count[,i+1]/100000
}
v[1,]
for (i in 2:10) {
  lines(v[i,], col=colors[i], type="o",lwd=2)
}



#ggplot으로 변환
count2 <- melt(count,id=c('년도'),variable.name = '병원종류', value.name = "건수")
count2$건수 <- count2$건수/10000
count2
options(digits = 2)
head(count)
ggplot(count2,aes(x=년도,y=건수, fill=병원종류,color=병원종류 )) +
  geom_line(linetype = 1, size =1) +
  geom_point(size=3) + 
  #geom_hline(yintercept = seq(0,5000,500), lty='dashed', size=0.1) + 
  theme_bw(base_family='malgun',base_size=12) + 
  #ggtitle()+
  theme(plot.title = element_text(family = "malgun", 
                                  face="bold",
                                  hjust = 0.5,
                                  size=15, 
                                  color = 'black' ))
