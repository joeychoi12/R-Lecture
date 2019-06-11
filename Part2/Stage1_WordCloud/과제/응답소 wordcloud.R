#과제 5 응답소 wordcloud 
setwd("D:/workspace/R_Data_Analysis/Part2/Stage1_WordCloud/과제")

rm(list=ls())
library(KoNLP)
library(wordcloud)
library(stringr)


data <- readLines("응답소_2015_01.txt")
data2 <- sapply(data, extractNoun, USE.NAMES = F)
data2
head(unlist(data2),30)
cdata <- unlist(data2)
eungdapso <- str_replace_all(cdata,"[^{:alpha]]","")
eungdapso


txt <- readLines("응답소_gsub.txt")
txt
for(i in 1:length(txt)) {
  eungdapso <- gsub(txt[i],"",eungdapso)
}
eungdapso <- gsub("\\d+","",eungdapso) ## 숫자 없애기 
eungdapso <- gsub("상담내용","",eungdapso)
eungdapso <- gsub("--상담내용","",eungdapso)
eungdapso <- gsub("--","",eungdapso)
eungdapso <- Filter(function(x) {nchar(x) >=2}, eungdapso)


eungdapso
unlist(eungdapso)
write(unlist(eungdapso),"응답소3.txt")
eungdapso2 <- read.table("응답소3.txt" ,quote = "")
nrow(eungdapso2)
wordcount <- table(eungdapso2)
head(sort(wordcount,decreasing=T),30)

set.seed(1212)
palete <- brewer.pal(9, "Set3")
wordcloud(names(wordcount), freq=wordcount,scale=c(5,1),rot.per = 0.25,min.freq = 2,
          random.order = F, random.color = T,colors=palete)
legend(0.1,0.9,"1월 응답소 페이지 분석", cex=0.8,fill=NA,border=NA,bg="white",text.col="red",text.font=2,box.col="red")









######################################################################

i <- 0
for (i in 1:13){
  
  data <- readLines(sprintf("응답소_2015_0%d.txt",i ))
  i <- i + 1
}

data1 <- NULL


for (i in 1:12){
  if(i >=10) {
    data1 <- readLines(sprintf("응답소_2015_%d.txt",i ))
    i <- i + 1
  }else
  data1 <- readLines(sprintf("응답소_2015_0%d.txt",i ))
  i <- i + 1
  
}


nrow(data1)
data3 <- NULL
data3 <- readLines("응답소_2015_12.txt")



eungdapso_loop <- gsub(" ","",place)
txt <- readLines("응답소_gsub.txt")
cnt_txt <- length(txt)
i<-1
for (i in 1:cnt_txt){
  eungdapso <-gsub((txt[i]),"",eungdapso)
}

setwd("D:/workspace/R_Data_Analysis/Part2/Stage1_WordCloud/과제/list/")
data3 <- nullfile()
allFiles <- list.files()
for(file in allFiles){
  data_sub<- readLines(file)
  data3 <- rbind(data3,data_sub)
}
nrow(data3)
View(data3)

data4 <- ""
allFiles <- list.files()
for(file in allFiles){
  data_sub<- readLines(file)
  data4 <- cbind(data3,data_sub)
}

nrow(data3)
View(data4)


findFreqTerms(eungdapso2, lowfreq = 4)

require(devtools)
install_github("lchiffon/wordcloud2")
install.packages('wordcloud2')
library(wordcloud2)
wordcloud2(wordcount,size=0.5, col="random-dark")
head(wordcount,20)
png()
