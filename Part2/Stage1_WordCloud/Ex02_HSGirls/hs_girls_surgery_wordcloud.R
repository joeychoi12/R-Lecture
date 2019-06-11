#예제2 여고생은 어디를 가장 고치고 싶은지 
data1 <- readLines("remake.txt")
data1 #Raw data from file
data2 <- sapply(data1,extractNoun, USE.NAMES = F)
data2 #리스트 형태의 명사만 추출된 데이터
data3 <- unlist(data2)
data3
data3 <- Filter(function(x) {nchar(x) <= 10},  data3) #10글자보다 큰 데이터는 제거 
data3 
head(unlist(data3), 30)

data3 <- gsub("\\d+","",data3) 
data3 <- gsub("쌍수","쌍꺼풀",data3)
data3 <- gsub("쌍커풀","쌍꺼풀",data3)
data3 <- gsub("메부리코","매부리코",data3)
data3 <- gsub("\\.","",data3)
data3 <- gsub(" ","",data3)
data3 <- gsub("\\'","",data3)
data3 <- gsub("수","",data3)
data3 <- gsub("개","",data3)
data3 <- gsub("ㅠㅠㅠㅠ", "", data3)
data3 <- gsub("기", "",data3)
data3 <- gsub("것","",data3)

txt2 <- readLines("성형gsub.txt")
txt2
for(i in 1:length(txt)) {
  data3 <- gsub(txt[i],"",data3)
}
data3

write(unlist(data3),"remake_2.txt")
data4 <- read.table('remake_2.txt')
data4
nrow(data4)
wordcount <- table(data4)
wordcount

set.seed(1212)
palete <- brewer.pal(9, "Set3")
wordcloud(names(wordcount), freq=wordcount,scale=c(5,1),rot.per = 0.25,min.freq = 2,
          random.order = F, random.color = T,colors=palete)
legend(0.1,0.9,"여고생들이 선호하는 성형수술 부위", cex=0.8,fill=NA,border=NA,bg="white",text.col="red",text.font=2,box.col="red")


