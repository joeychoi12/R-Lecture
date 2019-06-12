#과제 6 Hip Hop Lyric Analysis 

#import library
library(KoNLP)
library(wordcloud2)
library(ggplot2)
library(wordcloud)
library(dplyr)
library(stringr)
library(ggwordcloud)

#1 Making wordcloud with Hip Hop lyrics

setwd("D:/workspace/R_Data_Analysis/Part2/Stage2_Graph/과제")
txt <- readLines("hiphop.txt")
nouns <- sapply(txt,extractNoun, USE.NAMES = F)
head(unlist(nouns),30)
cdata <- (unlist(nouns))
hiphop <- str_replace_all(cdata,"[^[:alpha:]]","") #한글 영어 이외 삭제 
hiphop <- Filter(function(x) {nchar(x) >=2}, hiphop)

write(unlist(hiphop),"hiphop_lyrics.txt")
rev <- read.table("hiphop_lyrics.txt")
nrow(rev)
head(rev,30)
wordcount <- table(rev)
head(sort(wordcount,decreasing =T),30)
palete <- brewer.pal(7,"Set2")
wordcloud(names(wordcount), freq=wordcount, scale=c(5,1), rot.per=0.25, min.freq = 2,
          random.order = F, random.color =  T, colors = palete)
legend(0.3,1,"Hip Hop Lyric 분석", cex=0.8, fill=NA,border=NA,bg="white",
       text.col="black",text.font=2,box.col="blue")

wordcloud2(wordcount, color = 'random-dark',backgroundColor = "white")






#2 Pie Chart of top 10 most used words
write(unlist(hiphop),"hiphop_lyrics.txt")
rev <- read.table("hiphop_lyrics.txt")
nrow(rev)
head(rev,30)
wordcount <- table(rev)
head(sort(wordcount,decreasing =T),30)
top10 <- head(sort(wordcount,decreasing = T),10)
df_top10 <- as.data.frame(top10)

ggplot(df_top10, aes(x='', y =Freq, fill= rev)) + 
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y",start = 0)

df_top10 <- df_top10 %>% 
  mutate(pct = Freq/ sum(Freq) * 100) %>%
  #  mutate(ylabel = paste(pct, '%', sep = ''))
  #  mutate(ylabel = paste(sprintf("%4.1f",pct), '%', sep = '')) %>%
  mutate(ylabel = paste(sprintf("%s\n%4.1f", rev,pct), '%', sep = '')) %>%
  arrange(desc(rev)) %>%
  mutate(ypos= cumsum(pct*6) - 0.5*pct) 
df_top10       

ggplot(df_top10,aes(y=Freq,x='',fill=rev)) + 
  geom_bar(width = 1, stat='identity') +
  #geom_col(fill = palete, colour = "black")+ 
  coord_polar("y" , start = 0) +
  ggtitle("Hip Hop Lyric Analysis") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5,
                                  size=15, color = "darkblue") , axis.line = element_blank(),  axis.text = element_blank(), axis.ticks = element_blank()) +
  geom_label(aes(x=1.5,y=ypos,label=ylabel),color='black',size = 4) +
  ylab("Lyric Word") + xlab(" ")


#different color
ggplot(df_top10,aes(y=Freq,fill=rev,x='')) + 
  geom_bar(width = 1, stat='identity') + 
  geom_col(fill = palete, colour = "black") + 
  coord_polar(theta = "y", start = 0 ) +
  ggtitle("Hip Hop Lyric Analysis") +
  theme(plot.title = element_text(face = "bold", hjust = 0.5,
                                  size=15, color = "darkblue") , axis.line = element_blank(),  axis.text = element_blank(), axis.ticks = element_blank()) +
  geom_label(aes(x=1.5,y=ypos,label=ylabel),color='black',size = 4) +
  ylab("Lyric Word") + xlab(" ")



#3 Top 10 Bar Graph for Hip Hop lyrics
ggplot(df_top10,aes(y=Freq, x=rev)) +
  geom_bar(width = 0.5, stat = 'identity')

palete <- brewer.pal(10,"Spectral")

bchart <- head(sort(top10, decreasting = T),10)
bchart
bp <- barplot(bchart, main = "Hip Hop Lyric Top 10", col = rainbow(10),
              cex.names = 0.7, las = 2, ylim=c(0,100)) 


pct <- round(bchart/sum(bchart) * 100, 1)
barplot(bchart,main="Hip hop Lyrics Top 10",col= palete,
        xlim=c(0,110),cex.name=0.7,las=1,horiz=T)
text(y = bp, x = bchart*0.9, labels = paste(bchart,"개"), col = "black", cex = 0.7)
text(y = bp, x = bchart*1.1, labels = paste("(",pct,"%",")"), col = "black", cex = 0.6)


View(pct)


ggplot(df_top10,aes(y=Freq,x=rev)) +
  geom_bar(width = 0.5, stat = 'identity') + 
  geom_col(fill = palete, colour = "black") +
  coord_flip() + ylab("Number of Times")  + xlab("Word") +
  ggtitle("Hip Hop Lyric Top 10 Words") + 
  geom_text(aes(label=Freq), position=position_dodge(width=0.9),hjust=2, vjust=-0.1) 



