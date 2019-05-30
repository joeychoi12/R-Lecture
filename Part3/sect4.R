print(5/2)
print(5%/%2) #나눗셈의 몫
print(5%%2)  #나눗셈의 나머지 
print(5^5)

100000+100000 
# 10만 부터는 e+0x로 표기 
1/ 1000000
# 나누기 1만 (1e-04) 부터는 e^04 로 표기 
1/10000

# '1' + '2'는 출력이 안됨
as.numeric('1') + as.numeric('2')

#'first'
#"second"
#third <--- third는 출력이 안됨 Error: object 'third' not found 

first <- 1
first
second = 2 
second


class(1)
class('1')
class(TRUE)
class(!0)

#AND OR 
3 & 0 
3 & 3
3 | 3

# ! = NOT
!0
!3
!1

#EXCLUSIVE OR (XOR)
#SAME --> FALSE 
#0 | 0 -> 0 
#0 | 1 -> 1
#1 | 0 -> 1
#1 | 1 -> 0

#NAND (NOT AND)
# 0 & 0 -> 1 
# 0 & 1 -> 1
# 1 & 0 -> 1
# 1 & 1 -> 1

#NA Not Applicable, Not Available 
#NULL: 값이 없을 경우 
#R is case sensitive 

cat(1,NA,2)
cat(1,NULL,2)
sum(1,NA,2)
sum(1,NULL,2)
sum(1,NA,2, na.rm =T)


setwd("d:/workspace/R_Data_Analysis/Part3/data")
txt1 <- read.csv("factor_test.csv")
txt1

factor1 <- factor(txt1$blood)
factor1
gender1 <- factor(txt1$sex)
gender1

summary(factor1)
summary(gender1)

View(txt1)

stringsAsFactors = FALSE

#날짜와 시간 
Sys.Date()
Sys.time()
date()
class(Sys.Date())
class("2019-05-30")      
as.Date("2019-05-30")
as.Date("01-11-2014")
as.Date("19-05-30")
as.Date("01-11-2014",format="%d-%m-%y")
as.Date("19-05-30",format="%y-%m-%d")
as.Date("190530",format="%y%m%d")
as.Date("2014년 11월 1일",format="%Y년 %m월 %d일")
as.Date("05-30",format="%m-%d")
as.Date(10, origin="2019-05-30")
as.Date(20, origin=date()) #문자열만 가능
as.Date(20, origin=Sys.Date()) #Alternative

as.Date(-10,origin = "2019-05-30")
"2019-05-30"-"2019-05-27"
as.Date("2019-05-30")-as.Date("2019-05-27")
as.Date("2014-11-15")+5
as.Date("2019-11-14") - as.Date(date())
as.Date("2019-11-14") - Sys.Date()

as.Date("2014-11-01 20:00:00") - as.Date("2014-11-01 18:30") #POSIXct
as.POSIXct("2014-11-01 20:00:00") - as.POSIXct("2014-11-01 18:30:30")
0.491667 * 60
0.50002 *60

install.packages("lubridate")

#R Package Commonly used 
#dplry
#ggplot2
options(repos = c(CRAN = "http://cran.rstudio.com")) #set a default CRAN mirror

library(lubridate)
now()
date = now()
year(date)
month(date)
month(date, label = T)
day(date)
wday(date)
wday(date, label=T)
date <- date - days(2); date
month(date) <-2; date
date+months(3)
date <-hm("22:30") ; date
