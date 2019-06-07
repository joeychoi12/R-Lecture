# 
setwd("D:/workspace/R_Data_Analysis/Part4")
var1 <- 1:5
plot(var1)
var1 <- 5:1
plot(var1)
var2 <- c(2,2,2)
plot(var2)
x <- 1:3 
y <- 4:2
plot(x,y)
plot(x,y, xlim = c(0,4), ylim = c(0,5))
plot(x,y, xlim = c(0,4), ylim = c(0,5),
     xlab = "x 축값", ylab = "y 축값", main = "Plot Test")

v1 <- (c(100,130,120,160,150,230))
plot(v1, type='o',col='red',ylim=c(0,260),axes=FALSE,ann=FALSE)

axis(1,at = 1:5,labels = c('Mon','Tue','Wed','Thu','Fri'))
axis(2,ylim=c(100,260))

title(main='FRUIT', col.main="red",font.main=5)
title(xlab='Day', col.lab="black")
title(ylab='Price',col.lab = "blue")

v1
par(mfrow=c(1,4))
plot(v1,type="o")
plot(v1,type='s')
plot(v1,type='l')

par(mfrow=c(1,3))
pie(v1)
plot(v1,type='o')
barplot(v1)

par(mfrow=c(1,1))
a <- c(1,2,3)
plot(a,xlab="aaa")

par(mgp=c(0,1,0) ) #mgp = c(제목위치,지표값위치,지표선위치)의 순서
plot(a,xlab="aaa")

par(mgp=c(3,1,0))
plot(a,xlab="aaa")

par(mgp=c(3,2,0))
plot(a,xlab="aaa")

par(mgp=c(0,0,3))
plot(a,xlab="aaa")

##oma option test
par(oma = c(2,1,0,0))
plot(a,xlab="aaa")
par(oma=c(0,2,0,0))
plot(a,xlab="aaa")


v1 <- 1:5
v2 <- 5:1
v3 <- 3:7
plot(v1, type='s',col='red',ylim = c(1,7))
par(new=T)
plot(v2,type ='o',col='blue',ylim=c(1,7))
par(new=T)
plot(v3,type = 'l',col='green', ylim = c(1,7))

plot(v1, type='s',col='red',ylim = c(1,10))
par(new=T)
lines(v2,type ='o',col='blue',ylim=c(1,10))
par(new=T)
lines(v3,type = 'l',col='green', ylim = c(1,20))

legend(4,10,c("v1","v2","v3"), cex =0.9 ,col=c("red","green","blue"),lty=1)


#barplot() 막대그래프 그리기
x <- c(1:5)
barplot(x)
#make barplot horizontal 
barplot(x,horiz=T)
x<- matrix(c(5,4,3,2),2,2)
barplot(x,beside = T,names=c(5,2), col=c("green","yellow"))
x

x<- matrix(c(5,4,3,2),2,2)
barplot(x,names=c(5,3),col=c("green","yellow"),ylim = c(0,12))

par(oma=c(1,0.5,1,0.5))  #하, 좌, 상, 우 
barplot(x,names=c(5,3),beside=T,col=c("green","yellow"),horiz=T)
barplot(x,names=c(5,3),col=c("green","yellow"),horiz=T, xlim = c(0,12))

v1 <- c(100,120,140,160,180)
v2 <- c(120,130,150,140,170)
v3 <- c(140,170,120,110,160)

qty <- data.frame(Banana = v1, Cherry =v2, Orange=v3 )
qty


#as.matrix -> changes to matrix
barplot(as.matrix(qty),main="Fruit's Sales QTY",
        beside = T,col=rainbow(nrow(qty)), ylim=c(0,400))
legend(14,400,c("mon","tue","wed","thur","fri"),cex=0.8,fill=rainbow(nrow(qty)))

barplot(t(qty),main="Fruits Sales QTY", ylim=c(0,900),
        col=rainbow(length(qty)),space = 0.1, cex.axis = 0.8,las=1,
        names.arg=c("mon","tue","wed","thur","fri"),cex=0.8)
legend(0.2,800,names(qty),cex=0.7,fill=rainbow(length(qty)))
qty
t(qty)

#Drawing graph with condition ######################################
peach <- c(180,200,250,198,170,249)
colors <- c()
for ( i in 1:length(peach)) {
  if (peach[i] >= 200) {
    colors <- c(colors,"red")
  } else if(peach[i]) >= 180) {
    colors <- c(colors, "yellow")
  } 
    {colors <- c(colors, "green")}
 
}

######################################
peach <- c(180,200,250,198,170)
colors <- c( )
for ( i in 1:length(peach))
 { if (peach[i] >= 200 )
        { colors <- c(colors,"red") }
   else if ( peach[i] >= 180 )
       { colors <- c(colors,"yellow") }
       { colors <- c(colors,"green") }
 }




barplot(peach,main = "Peach Sales QTY",
         names.arg = c("mon","tue","wed","thur","fri"),col = colors)



height <- c(182,175,167,172,163,178,181,166,159,155)
hist(height,main="histogram of height")


par(mfrow = c(1,1), oma = c(0.5,0.5,0.1,0.1))
p1 <- c(10,20,30,40)
pie(p1,radius = 1)
pie(p1, radius=0.5, init.angle = 90)

pie(p1,radius =1,init.angle = 90,col = rainbow(length(p1)),
    label=c("week1","week2","week3","week4"))

pct <- round(p1/sum(p1) * 100, 1)
lab <- paste(pct, "%")
pie(p1,radius = 1, init.angle = 90, col = rainbow(length(p1)),label = lab)
legend(0.89,1,c("week1","week2","week3","week4"), cex=1, fill = rainbow(length(p1)))

lab1<- c("week1","week2","week3","week4")
lab2<- paste(lab1, "\n", pct, "%")
pie(p1,radius =1, init.angle = 90,col=rainbow(length(p1)),labels = lab2)

options(repos = c(CRAN = "http://cran.rstudio.com"))

install.packages("plotrix")
library(plotrix)
p1 <-  c(10,20,30,40,50)
f_day <- round(p1/sum(p1)* 100,1)
f_label <- paste(f_day,"%")
pie3D(p1, main="3D Pie Chart", col=rainbow(length(p1)),
      cex=0.5, labels=f_label,explode=0.05)
legend(0.7,1,c("mon","tue","wed","thur","fri"),cex=0.6,fill=rainbow(length(p1)))

v1 <-c(10,12,15,11,20)
v2 <-c(5,7,15,8,9)
v3 <-c(11,20,15,18,13,5)
boxplot(v1,v2,v3)

boxplot(v1,v2,v3,col=c('blue','yellow','pink'),
        names=c("Blue","Yellow","Pink"),
        horizontal = T)
