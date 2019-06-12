#블로거들이 추천하는 서울 명소 
setwd("D:/workspace/R_Data_Analysis/Part2/Stage1_WordCloud/Ex01_SeoulResponse")
txt <- readLines('seoul_go.txt')
nouns <- sapply(txt,extractNoun,USE.NAMES = F)
head(unlist(nouns),30)
cnt_txt<-length(txt)
i <- 1
for(i in 1:cnt_txt) {
  seoul_recmd <- gsub(txt[i],"",seoul_recmd)
}

data <- (unlist(nouns))
data
nouns <- gsub("\\d+","",nouns)
nouns


write(unlist(nouns),"Seoul_Recmd.txt")
seoul_recmd <- read.table('Seoul_Recmd.txt')
seoul_recmd <- gsub(" ","",seoul_recmd)
txt<- readlines('gsub_for_blogrec.txt')


#pg141 프로포즈 선물 
rm(list = ls())
dev.off()
setwd("D:/workspace/R_Data_Analysis/Part2/Stage2_Graph/")

      
txt <- readLines('propose.txt')      
nouns <- sapply(txt,extractNoun, USE.NAMES = F)
head(unlist(nouns),30)
cdata <- unlist(nouns)
propose <- str_replace_all(cdata,"[^[:alpha:]]","")
class(propose)
propose <- unlist(propose)
propose <- Filter(function(x) {nchar(x) >= 2}, propose)
propose <- gsub("프로포즈","",propose)
propose <- gsub("ㅎㅎ","",propose)

txt1  <- readLines("프로포즈gsub.txt")
for(i in 1:length(txt1)) {
  propose <- gsub(txt1[i],"",propose)
}
head(propose,30)

write(propose,"propose1.txt")
rev <- read.table("propose1.txt")
nrow(rev)

rev
wordcount <- table(rev)
head(wordcount)
head(sort(wordcount,decreasing = T),30)
palette <- brewer.pal(10,"Spectral")
wordcloud2(wordcount, backgroundColor = "white", color = "random-dark")
wordcloud(names(wordcount),freq = wordcount, random.order = F, random.color = T, colors = palette)


top10 <- head(sort(wordcount, decreasing = T),10)
df_top10 <- as.data.frame(top10)
df_top10
ggplot(df_top10,aes(rev,Freq)) + 
  geom_bar(stat = "identity") + geom_col(fill = palette) + 
  #coord_polar("y", start =0) +
  ggtitle("프로포즈 선물 TOP 10")

