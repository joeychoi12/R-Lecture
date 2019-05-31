#Function aka 함수 
#help funcion using "?"
?subset()



vec1 <- c(1:5)
vec2 <- c('a','b','c','d','e')
max(vec1) ; max(vec2)
mean(vec1)
median(vec1)
min(vec1)
min(vec2)
sd(vec1) #standard deviation
sum(vec1)
var(vec1) #variance 분산 

library(googleVis)
Fruits

#aggregate function 
aggregate(Sales~Year, Fruits, sum)
aggregate(Sales~Year, Fruits, max)
aggregate(Sales~Year, Fruits, mean)
aggregate(Sales~Fruit, Fruits, sum)
aggregate(Sales~Fruit, Fruits, max)

#apply function
mat1 <- matrix(c(1:6), nrow = 2, byrow = T) ; mat1
apply(mat1, 1, sum)   # 1 - 행 단위 계산 
apply(mat1, 2, sum)   # 2 - 열 단위 계산

#multiplication -> prod
apply(mat1, 1, prod)   # 곱샘  
apply(mat1[,c(2,3)],2,max)  #

list1 <- list(Fruits$Sales); list1
list2 <- list(Fruits$Profit); list2
#using lapply() applying on list

lapply(c(list1,list2),max)
sapply(c(list1,list2),max)
lapply(Fruits[,c(4,5)],max)
sapply(Fruits[,c(4,5)],max)

Fruits
tapply(Sales, Fruit, sum) #attach() 를 먼저 해야함 
attach(Fruits)
tapply(Sales,Fruit,sum)
tapply(Sales,Year,sum)

vec1 <- c(1:5)
vec2 <- seq(10,50,10)
vec3 <- seq(100,50 0,100)
mapply(sum,vec1,vec2,vec3)

#Practice Questions 
#1 
data1 <- read.csv('data1.csv')
data1
#년도별 합계 
apply(data1[,c(2:15)],2,sum)

#연령별 합계 
apply(data1[,c(2:15)],1,sum)
apply(data1[,-1],1,sum)

#2
data2 <- read.csv('1-4호선승하차승객수.csv')
#노선번호별 승차인원수 합계
attach(data2)
tapply(승차,노선번호,sum)

#노선번호별 하차 인원수 합계 
tapply(하차,노선번호,sum)

#노선 번호 상관없이 승차 하차 인원수 합계
apply(data2[c(3:4)],2,sum)
sapply(data2[,c(3:4)],sum)

#노선 번호별 승하차 인원수 합계 
apply(data2[c(3,4)],1,sum)
aggregate(승차+하차~노선번호,data2,sum)

#노선 번호별 승차 및 하차 인원수 합계 
aggregate(승차~노선번호,data2,sum)
aggregate(하차~노선번호,data2,sum)
