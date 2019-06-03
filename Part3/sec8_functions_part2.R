#Function
mat1 <- matrix(c(1:6), nrow =2, byrow = T)
a <- rep(1, 3)
sweep(mat1, 2, a)
b <- matrix(c(2,2))
sweep(mat1, 1, b) #행방향으로 Sweep

a <- c(1,2,3,4,5) ; length(a)
length(mat1)
library(googleVis)
length(Fruits)

log(10)
log10(10)
sin(pi)
abs(-1)
v2 <- c(-1,-2,33,-4)
abs(v2)

#올림 내림
ceiling(-2.3)
floor(-2.3)
round(2.555)
round(2.5,digits = 0)
round(3.5,digits=0)

choose(5,3)
choose(5,2)
choose(10,3)

myfunc <- function() {
  return(10)
}
myfunc2 <- function(x) {
  y = x * x;
  return(y)
}
myfunc2(-3)


#Practice Questions
#1
#두수를 입력 받아 첫수에서 두번째 수를 빼고 결과 출력 
func_test1 <- function(x,y) {
  answer = x-y
  return(answer)
}

func_test1(3,2)
func_test1(2,3)

#2
#양수이든 음수이든 무조건 양수로 출력
func_test1 <- function(x,y){
  answer = abs(x-y)
  return(answer) 
}

exfunc2 <- function(x,y) {
  result <-abs(func_test1(x,y))
  return(result)
}

func_test1(5,200)
exfunc2(5,500)

func_test1(2,3)
func_test1(3,2)

::geom_bar

install.packages('ggplot2')
library(ggplot2)
ggplot(data=pressure, aes(x=temperature, y=pressure)) + 
  geom_point()+
  geom_line()

