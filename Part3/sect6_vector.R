#Vector 1차원
#Matrix 2차원
#Array  n차원 
# CRUD
  #Create
  #Retrieve 
  #Update
  #Delete



c(1,2,3,4,5)
c(1,2,3,4,"5")
vec1 <- c(0,1,2,3,4,5)
#R's index start from 1 not 0 
vec1[3] #Reading the 3rd information from the vector 
#R's -1 shows the result without the -x index
vec1[-3]
vec1[1:3]
length(vec1)
vec1[1:(length(vec1)-2)]
vec1[-1:-3] #-1:-3 erases the first 3 index and outputs
vec1[2]<-6; vec1
vec1 <- c(vec1, 7); vec1
vec1[8] <- 8 ; vec1
vec1[10] <- 10; vec1 #R creates NA when you skip one index
#append adds inbetween or whereever you want within a list vector 
append(vec1,10,after=2) 
append(vec1,c(10,11),after=3) #if you want to change vec1 variable you have to assign the value
append(vec1,100,after=0) #after=0 will put to the very front of the index 

#Vector 연산
#adding 2 vectors together
c(1,2,3) + c(4,5,6)

#A vector + 1 adds 1 to all of the index values 
c(1,2,3) + 1
 

var1 <- c(1,2,3)
var1.1 <- c(8)
var2 <- c(2,3,4)
var1 + var2
var3 <- c('3','4','5'); var3
var1 + var3 # Error non numeric characters and numeric values cannot be added to binary operator

#union function will remove the duplicating values within the vector
union(var3,var1)

var4 <- c(1,2,3,4,5)
var4.1 <- c(1,2,3,4,5,6)

var1 + var4   #Produce Warning Message: longer object length is not a multiple of shorter object length 
var1 + var4.1 #No warning message will repeat and add accordingly

var1 - var2 

#vector = 집합
#합집합 Union
#교집합 Intersect
#차집합 - setdiff
setdiff(var1,var2)
setdiff(var2,var1)
intersect(var1,var2)
intersect(var1.1,var4)


fruits <- c(10,20,30); fruits
names(fruits) <- c('apple','banana','cantaloupe')
fruits
#var5 <- c(1,2,3,4,5,6)
#seq function 시작값과 끝값의 차이에 따라 +1 -1 으로 증가 및 감소한다
#seq function depending the starting value and ending value the values increase or decrease by 1 increments by default
var5 <- seq(1:6); var5
var6 <- seq(2,-2); var6

#adding a third index after the ending value shows the increment amount 
ven <- seq(2,10,2); even
odd <- seq(1,10,2); odd
#repeat the same sequence 2 times by using function rep
var8 <- rep(1:3,2);var8
#each = n(number of times) 
var9 <- rep(1:3, each=2); var9

#shows the length of the array/vector/lsit
length(var1)

#백터의 특정 문자의 포함 여부 찾기
#Finding whether or not a specific charactor is included. Results return in TRUE or FALSE 
5 %in% even 
4 %in% even

#백터형 연습문제 Practice Questions
#1 
date4 <- seq(from=as.Date("2015-01-01"),to=as.Date("2015-01-31"),by=1)
date4.1 <- seq(from=as.Date("2015-1-1"),to=as.Date("2015-1-31"),by=1)
date4
#2
vec1 <-c('사과','배','감','버섯','고구마') 
vec1 %in% c('감','배')
vec1[!vec1 %in% '감']

#3
vec1 <- c('봄','여름','가을','겨울')
vec2 <- c('봄','여름','늦여름','초가을')
#1) 
union(vec1,vec2)
#2)
setdiff(vec1,vec2)
#3)
intersect(vec1,vec2)
rm(list=ls())




