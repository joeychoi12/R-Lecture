#Matrix()함수 
mat1 <- matrix(c(1,2,3,4))
mat1
mat2 <- matrix(c(1,2,3,4),nrow=2); mat2
mat2.1 <- matrix(c(1,2,3,4),nrow=3,ncol=5,byrow = T); mat2.1
mat3<- matrix(c(1,2,3,4),nrow=2,byrow = T); mat2
#1열 1행
#1st row 1st column
mat3[1,1]
#1행
#1st row
mat3[1,]
#1st column
mat3[,1]

#새로운 행과 열 추가하기 - rbind() cbind() 사용
mat4 <- matrix(seq(1:9), nrow=3, byrow = T) ; mat4
mat4.1 <- matrix(seq(1:12), nrow =4, byrow = T); mat4.1
mat4 <- rbind(mat4, c(10:12)) ; mat4
mat4 <- cbind(mat4, c(13:16)); mat4
mat5 <- matrix(c('a','b','c','d'), nrow = 2) ; mat5
mat5 <- cbind(mat5, c('e','f')) ; mat5

#assigning column names: colnames(mat4) 
colnames(mat5) <- c('First','Second','Third')

#연습문제 
#1-1
seasons <- matrix( c('봄','여름','가을','겨울'), nrow=2) ;seasons
#1-2
seasons <- matrix( c('봄','여름','가을','겨울'), nrow=2, byrow = T) ;seasons
#2
seasons[,2]
seaons[2,]
#3
seasons <- rbind(seasons, c('초봄','초가을'))
#4
seasons <- cbind(seasons, c('초여름','초겨울','한겨울'))

#Array(배열)
array1 <- array(c(1:12), dim=c(5,3)) ; array1
array1 <- array(c(1:12), dim=c(5,3), byrow = T ) ; array1 #byrow 사용 못함 
array2 <- array(c(1:12), dim=c(2,2,3))
array2
array2[1,1,3]
array2[1,,]

#List
list1 <- list(name='홍길동', address='전국', tel='010-2345-6789', 
              age=300)
list1 
#extracting information from a list
list1$age
#extracting on each indext of the list
list1[1:2]
list1[4]
list1$birth <- '1719-10-23'
list1
list1$name <- c('Steve','Chulsoo','Tony')
append(list1$name, 'Bruce')
list1$age <- NULL 
list1
