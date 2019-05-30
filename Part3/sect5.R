#Lesson on Variables 
#변수

var1 <- "aaa" ; var1
var2 <- 111 ; var2
var3 <- Sys.Date(); var3
var4 <- c("a,b,c"); var4
var4.1 <- c("a","b","c"); var4 ; var4.2
222 -> var5 ->var6
var5 ; var6
remove(var4.2)
string1 <- "Very easy R programming" ;string1
string2 <- "I'm James Seo"; string2

string3 <- 'He said, "I am single".'; string3
string4 <- 'He said, \"I am single\".'; string4
string4.1 <- "He said, \"I am single\"."; string4.1

comp <- c(1,"2")
comp
class(comp)

seq <- 1:5
seq
seq <- 'a':'f' #문자는 안됨 
date1 <- seq(from=as.Date('2014-01-01'),
             to=as.Date('2014-01-31'),by=1)
date1
class(date1)

date2 <- seq(from=as.Date('2014-01-01'),
             to=as.Date('2015-01-31'),by='month')
date2

date3 <- seq(from=as.Date('2014-01-01'),
             to=as.Date('2019-05-31
                        '),by='year')

objects()
.hidden <- 3
.hidden
rm(string3)
ls()
rm(list = ls())