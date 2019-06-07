#조건식과 반복문 If statements and for loops 
myAbs <- function(x) {
  if (x>=0) {
    return(x)
  } else {
    return(-x)
  }
}
myAbs(-3.2)
myAbs(3.334341234)

myAbs2 <- function(x) {
  if (x>=0) {
    return(x)
  }
  return(-x)
  
}
myAbs(-3.2)
myAbs(3.334341234)
myAbs(scan())

myF1 <- function(x) {
  if (x >0) {
    return(x*x)
  } else{
    return(0)
  }
  
  
}
myF1(3)
myF1(4.6)
myF1(-2.4)


myF2 <- function(x) {
  if(x>0) {
    return(x*2)
  } else if(x==0) {
    return(0)
    
  } else {
    return (x*-2)
  }
    
}
myF2(4.6)
myF2(0)
myF2(-2.4)

number <- scan()
ifelse(number%%2==0,'짝수','홀수')

#Practice Question 
#1
myf1 <- function(x) {
  if(x > 5) {
    return(1)
  } else if(x <= 5){
    return(0)
  }
  
}

#2
myf2 <- function(x) {
  if(x >0) {
    return(1)
  } else if(x < 0){
    return(0)
  } else {
    return("Your number is 0")
  }
    
}
myf2(1)
myf2(-2)
myf2(0)

#3
myf3 <- function(x,y) {
  if(x>y) {
    return(x-y)
  }else{
    return(y-x)
  }
  
}
myf3(1,3)
myf3(3,1)
myf3(200,-2000)

#4
myf4 <- function(x){
  if(x<=0){
    return(0)
  }else if(1<=x && x<=5){
    return(1)
  }else{
    return(10)
  }
}

myf4(5)
myf4(0)
myf4(-200)
myf4(200)

#5
ans <- scan()
yn_function <- function(ans){
  if(ans == 'y'|| ans =='Y' ){
    return("Yes")
    
  }else{
    return("Not Yes")
  }
}  

yn_function('Y')

ex5 <- function(input) {
  if(input == 'Y' || input == 'y')
}    return("Yes")

}else{
  return("Not Yes")
}



#6



myIntD <- function(a,b,c){
  if(a%%1==0 && b%%1=0 && c%%1=0){
       return("All your numbers are integers")
      }else {
      return("You have a number that is not a integer")
  }
    
}

myIntD <- function(a,b,c){
  D = b*b - 4*a*c
  if(D > 0) {
    return(2)
    else if(D==0) {
      return(1)
    }else{
      return(0)
    }
  }

myReadD <- function(a,b,c) {
  D = b*b - 4*a*c
  if(abs(D) < 1e-5){
    return(1)
  }else if (D > 0) {
    return(2)
  }else {
    return(0)
  }
}
  
a <- 1.000000000000000000000000000000000000001
b <- -2.0000000001
c <- 1.002

myReadD(a,b,c)

  
ans <- scan(what="")


fun <- function(){
  x <- readline("What is the value of x?")  
  y <- readline("What is the value of y?")
  t <- readline("What are the T values?")
  v <- readline("What are the V values?")
  
  x <- as.numeric(unlist(strsplit(x, ",")))
  y <- as.numeric(unlist(strsplit(y, ",")))
  t <- as.numeric(unlist(strsplit(t, ",")))
  v <- as.numeric(unlist(strsplit(v, ",")))
  
  out1 <- x + y
  out2 <- t + v
  
  return(list(out1, out2))

}

if(interactive())fun()














