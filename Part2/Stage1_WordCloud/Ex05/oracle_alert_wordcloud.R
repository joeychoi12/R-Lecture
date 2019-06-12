#1-7 예제 특정 키워드 골라 분석 

setwd("D:/workspace/R_Data_Analysis/Part2/Stage1_WordCloud/Ex05")
library(wordcloud)
library(KoNLP)

alert <- readLines("oracle_alert_testdb.log")
head(alert, 10)
error_1 <- gsub(" ","_",alert)
head(unlist(error_1),20)
error_2 <- unlist(error_1)
error_2 <- Filter(function(x) {nchar(x) >=5},error_2)
head(error_2,10)
error_3 <- grep("^ORA-+",error_2,value = T)
error_2<- Filter(function(x) {nchar(x) >= 5} ,error_2) # 5 글자 이상 되는 것만

head(unlist(error_3),20)
write(unlist(error_3),"alert_testdb2.log")
rev <- read.table("alert_testdb2.log")
nrow(rev)
errorcount<- table(rev)
head(sort(errorcount,decreasing=T),20)
 
palete <- brewer.pal(9,"Set1") 
wordcloud(names(errorcount),freq=errorcount,scale=c(5,0.5),rot.per=0.25,min.freq=3,
           random.order=F,random.color=T,colors=palete)
