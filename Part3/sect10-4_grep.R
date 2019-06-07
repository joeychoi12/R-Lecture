char <-c('apple','Apple','APPLE','banana','grape')
grep('apple',char)
char2 <- c('apple','banana')
grep(char2,char)
grep(paste(char2,collapse ='|'), char, value = T)

grep('pp',char)
grep('pp',char, value = T)

grep('^A',char,value = T)
grep('e$', char, value =T)

char2 <- c('grade1','apple1','apple2','orange','Apple')
grep('ap', char2, value = T)
grep('[1-9]',char2,value =T)
grep('[[:upper:]]',char2,value = T)
grep('[A-Z]', char2, value = T)

for3 <- function(x){
  num <- 10
  for(i in 1:x){
  line <- str_c(num, "번 학생 손드세요" )
  num <- num + 10
  print(line)
  }
  
}
for3(30)

var <- read.delim('채소.txt', header = F)
var

readline(var)

while(x<5){
  x <- x+1;
  if()
  
}