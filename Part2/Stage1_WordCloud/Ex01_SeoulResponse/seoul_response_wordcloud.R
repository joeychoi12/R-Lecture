# 예제 1-1 서울 응답소 페이지 분석

setwd("D:/workspace/R_Data_Analysis/Part2/Stage1_WordCloud/Ex01_SeoulResponse")
options(repos = c(CRAN = "http://cran.rstudio.com"))
install.packages('rJava')
library(rJava)
install.packages("KoNLP")
install.packages("wordcloud")
library(KoNLP)
library(wordcloud)
useSejongDic()
library(RColorBrewer)

data <- readLines("seoul_new.txt")
data

rm(list=ls())

extractNoun('서울시 버스정책을 역행하는 행위를 고발합니다,')
extractNoun(data)
data2 <- sapply(data, extractNoun, USE.NAMES = F)
data2 #명사들만 있는 데이터(list 형태)
head(unlist(data2, 30))
data2
data3 <- unlist(data2)
data3 <- gsub("\\d+","",data3) ## 숫자 없애기 
data3 <- gsub("서울시","",data3)
data3 <- gsub("서울","",data3)
data3 <- gsub("요청","",data3)
data3 <- gsub("제안","",data3)
data3 <- gsub(" ","",data3)
data3 <- gsub("-","",data3)
data3
write(unlist(data3),"seoul_2.txt")
data4 <- read.table("seoul_2.txt")
data4
head(data4)
nrow(data4)
wordcount <- table(data4)
wordcount
head(sort(wordcount, decreasing = T),20)

data3 <- gsub("OO", "", data3)
data3 <- gsub("개선","",data3)
data3 <- gsub("문제","",data3)
data3 <- gsub("관리","",data3)
data3 <- gsub("민원","", data3)
data3 <- gsub("이용","", data3)
data3 <- gsub("관련","", data3)
data3 <- gsub("시장","", data3)
data3 <- gsub("님","", data3)
data3 <- gsub("한","", data3)


write(unlist(data3),"seoul_3.txt")

data4 <- read.table("seoul_3.txt")
wordcount <- table(data4)
head(sort(wordcount,decreasing = T),800)

txt <- readLines("gsubfile.txt")
cnt_txt <- length(txt)


palete <- brewer.pal(9, "Set3")
wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per = 0.25,min.freq = 1,
          random.order = F,random.color = T,colors= palete)
legend(0.3,1,"서울시 응답소 요청사항 분석",cex=0.8,fill=NA, border=NA,bg="white",
       text.col="red",text.font=2,box.col="red")


palete <- brewer.pal(8, "Dark2")
set.seed(1234)
wordcloud2(names(wordcount),freq=wordcount,scale=c(4,0.3),rot.per = 0.1,min.freq = 1,
          random.order = F,random.color = T,colors= palete)



#Create Palette
redPalette <- c("#5c1010", "#6f0000", "#560d0d", "#c30101", "#940000")
redPalette


v1 <- ("봄이 지나면 여름이고 여름이 지나면 가을입니다 그리고 겨울이죠")
extractNoun(v1)

v3 <-c("봄이 지나면 여름이고 여름이 지나면 가을입니다", "그리고 겨울이죠")
v3
extractNoun(v3)

v4 <- sapply(v3, extractNoun, USE.NAMES = F)
v4
wordlcloud