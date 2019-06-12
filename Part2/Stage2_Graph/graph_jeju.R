# 예제 2-1 "제주도 여행 코스 추천' 검색어 결과를 그래프로 
setwd('D:/workspace/R_Data_Analysis/Part2/Stage2_Graph')
library(KoNLP)
library(wordcloud)
useSejongDic()
library(stringr)
library(dplyr)
library(plotrix)

mergeUserDic(data.frame(readLines("제주도여행지.txt"),"ncn"))
mergeUserDic(data.frame(readLines("제주도여행지.txt"), "ncn"))
             
txt<-readLines("jeju.txt")             
place <- sapply(txt,extractNoun,USE.NAMES=F)
place   
head(unlist(place), 30)
cdata <- unlist(place) 
place <- str_replace_all(cdata,"[^[:alpha:]]","")  # 한글 , 영어 외는 삭제

place <- gsub(" ","",place)
txt<- readLines("제주도여행코스gsub.txt")
cnt_txt <- length(txt)
for(i in 1:cnt_txt){
  place <- gsub((txt[i]),"",place)
}
place
place <- Filter(function(x) {nchar(x) >=2},place)
write(unlist(place),"jeju_2.txt")
rev <- read.table("jeju_2.txt")
nrow(rev)
wordcount <- table(rev)
head(sort(wordcount,decreasing =T),30)
top10 <- head(sort(wordcount,decreasing = T),10)
pie(top10,main = "제주도 추천 여행 코스 TOP 10")
pie(top10,col=rainbow(10),radius=1,main="제주도 추천 여행 코스 TOP 10")

palete <- brewer.pal(10,"Spectral")
palete <- brewer.pal(10,"Pastel2")
pie(top10,col=palete,radius=1,main="제주도 추천 여행 코스 TOP 10")
display.brewer.all()


#수치값 함꼐 출력
pct <- round(top10/sum(top10) * 100,1)
pct
names(top10)
lab <- paste(names(top10),"\n",pct,"%")
lab <- paste(names(top10),"\n",pct,"%", sep = '')
lab
pie(top10,main="제주도 추천 여행 코스 TOP10", col=palete, cex=0.8, labels =lab)

library(ggplot2)
geom_bar(aes(x= ))

#ggplot pie chart 
str(top10)
df_top10 <- as.data.frame(top10)
df_top10
ggplot(df_top10, aes(x='', y =Freq, fill= rev)) + 
  geom_bar(width = 1, stat = "identity")

ggplot(df_top10, aes(x='', y =Freq, fill= rev)) + 
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y",start = 0)
ggplot(df_top10, aes(x= freq, y=rev, fill='')) + 
         geom_bar(stat= "identity") 

options(digits = 2)
df_top10 <- df_top10 %>%
  mutate(pct = Freq/ sum(Freq) * 100) %>%
#  mutate(ylabel = paste(pct, '%', sep = ''))
#  mutate(ylabel = paste(sprintf("%4.1f",pct), '%', sep = '')) %>%
  mutate(ylabel = paste(sprintf("%s\n%4.1f", rev,pct), '%', sep = '')) %>%
  arrange(desc(rev)) %>%
  mutate(ypos= cumsum(pct) - 0.5*pct)
df_top10       
       
ggplot(df_top10,aes(x='',y=Freq,fill=rev)) + 
  geom_bar(width = 1, stat='identity') +
  geom_text(aes(y=ypos,label=ylabel),color='black')

install.packages('extrafont')
library(extrafont)
windowsFonts()
windowsFonts(malgun = "맑은 고딕")
theme_update(text= element_text(family = "malgun"))

#PIE CHART USING GGPLOT
ggplot(df_top10,aes(x='',y=Freq,fill=rev)) + 
  geom_bar(width = 1, stat='identity') +
  coord_polar("y" , start = 0) +
  ggtitle("제주도 추천 여행 코스 TOP 10") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5,
                                  size=15, color = "darkblue")) +
  geom_text(aes(y=ypos,label=ylabel),color='black') 


bchart <- head(sort(top10, decreasting = T),10)
bchart
bp <- barplot(bchart, main = "제주도 여행코스 TOP10", col = rainbow(10),
              cex.names = 0.7, las = 2, ylim=c(0,25))
pct <- round(bchart/sum(bchart) * 100, 1)
pct
text(x = bp, y= bchart * 1.05, labels = paste("(",pct,"%",")"), col = "black")
text(x = bp, y = bchart * 0.95, labels = paste(bchart,"건"), col = "black")

# 옆으로 누운 바 그래프 그리기


bchart
barplot(bchart,main="제주도 추천 여행 코스 Top 10",col=rainbow(10),
                   xlim=c(0,25),cex.name=0.7,las=1,horiz=T)
text(y = bp, x = bchart*0.9, labels = paste(bchart,"건"), col = "black", cex = 0.7)
text(y = bp, x = bchart*1.15, labels = paste("(",pct,"%",")"), col = "black", cex = 0.7)

#3D Pie CHart
th_pct <- round(bchart/sum(bchart) * 100, 1)
th_names<- names(bchart)
th_labels <- paste(th_names, "\n","(",th_pct,")")
pie3D(bchart,main="제주도 추천 여행 코스 Top 10",col=rainbow(10), cex = 0.3, labels = th_labels,explode = 0.05)
