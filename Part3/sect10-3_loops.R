#반복문 while loops and for loops
#for loops is used for when the number of loops is decided i.e. 5 times loop 10 times loop
#while loops are used more generally 

no <- 0
while(no <5) {
  
  print(no)
  no <- no + 1
} 

x<- 1
while(x<5) {
  x <- x+1; if(x==4) break; print(x)
}

number<-0

while (number <= 10) {
  number <- number + 1
  if (number %%2 == 1)
    next()
  print(number)
}

while(number <= 10){
  if(number %%2 == 1){
    next()}
  else {
    print(number)
    number <- number +1}
}

#for loop
for(i in 1:10) {
  print(i)
}

sum <- 0 
for (i in 1:100) {
  sum <- sum + i
}
print(sum)

sum <- 0 
for (i in 1:100) {
  sum <- sum + i * 3
  
}
print(sum)

#3의 배수의 sum 
for (i in 1:100) {
  if(i %% 3 == 0)
    sum <- sum + i
}


multiple <- function(limit,number) {
  sum <- 0
  for (i in 1:limit) {
    if(i %% number == 0)
      sum <- sum + i
  }
  return(sum)
}
multiple(1000,4)

?print()

#연습문제 
var1 <- read.csv('채소.txt', header = F)
var1
one <- readLines(var1)
one1 <- readLines(var1)


hasLine <- TRUE
while(hasLine == TRUE) {
  line = readline(var1)
  if(line == '버섯')
    next ;
  print(line)
  if(line != NULL)
    hasLine == FALSE
}

i <- 0
for (i in 1:(2-1))
  print(i)



for (i in 1:5) {
  line <- ''
  if(i != 1) {
    for (k in 1:(i-1))
      line <- str_c(line,' ')
  }
  for (k in i:5) {
    line <- str_c(line, '#')
  }
  print(line)
}


for (i in 1:5) {
  line <- ''
  for(k in 1:i) { 
    line <- str_c(line, '#') }
  print(line)
}


#구구단 
for (i in 1:9) {
  for (k in 1:9) {
    ans <- i * k
      cat(i, ' x ', k, ' = ', ans )
    print(" ")
  }
}

#Diamond 그리기
i <-  1
for (i in 1:7) {
  line <- ''
  if(i %% 2 = 0) 
    next
  for (k in 1:i) {
    line <- str_c(line, '#') 
  }
  print(line)
}


space <- 6
for (i in 0:space) {
  
  for (k in seq(from = 0, to = (space-1), by = 2))
    cat(" ")
  for (k in seq(from = 0, to = i, by = 2))
    cat("# ") 
  for (k in 0:space-1)cat(" ")
  cat("\n")
  space <- space -1
  
}

# 3 empty 2 empty 1 empty 0 empty 


for (i in 0:6) {
  empty <-3 
  sharp <-3
  for(k in 0:empty)
    cat(" ")
  for(k in 0:sharp)
    if(sharp %%2 = 0)
    cat("# ")
  
}
  

#약수 구하는 함수
devisor <- function(x){
  if(x){
    if(x%%2 ==0)
      for(i in 1:x)
        dev <- str_c()
  }

}

den <- c(1)
for (i in  n2:x) {
  if (x %% i == 0)
    den <- c(den,i)
}
#풀이 구구단 
for(i in 2:9) {
  line <- str_c(i, '단')
  print(line)
  for (k in 1:9) {
    line <- str_c(i, 'x', k)
  }
}

#풀이 다이아 
while (T) {
  for (i in 1:4) {
    line <- ''
    if (i != 4) {
      for(k in 1:(3 - (i-1)))
        line <- str_c(line, '')
    }
    for (k in 1:(2*i-1))
      line <- str_c(line,'#')
    print(line)
  }
  for (i in 3:1) {
    line <- ''
      for(k in 1:(3 - (i-1)))
        line <- str_c(line, '')
    
    for (k in 1:(2*i-1))
      line <- str_c(line,'#')
    print(line)

  }
  break;
    }

#풀이 약수 
getDenominator <- function(x) {
  den <- c(1)
  if(x >= 2) {
    for (i in 2:x) {
      if (x %% i == 0)
        den <- c(den,i)
    }
  }
  return(den)
}

getDenominator(60)
getDenominator(-60)

###### For loop 추가 #########
sum <- 0
for (i in seq(3,100,3)) {
  sum <- sum + i 
}
print(sum)
rm(list=ls())

for (i in c(1,3,5,7,8)) {
  print(i)
}

?Control
  
