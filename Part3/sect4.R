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
