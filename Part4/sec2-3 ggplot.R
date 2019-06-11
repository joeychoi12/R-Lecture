setwd("d:/Workspace/R_Data_Analysis/Part4")
korean <- read.table("data/학생별국어성적_new.txt", header=T, sep=",")
korean
ggplot(korean, aes(x=이름, y=점수)) +      # positional argument
  geom_point()
ggplot(mapping=aes(x=이름, y=점수), data=korean) +   # keyword argument
  geom_point()

ggplot(korean, aes(x=이름, y=점수)) + 
  geom_bar(stat="identity")
ggplot(korean, aes(x=이름, y=점수)) + 
  geom_bar(stat="identity", fill="green", colour="red")
ggplot(korean, aes(x=이름, y=점수)) + 
  geom_bar(stat="identity", fill="green", colour="red") +
  theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1,
                                 color="blue", size=8))

score_kem <- read.csv("data/학생별과목별성적_국영수_new.csv")
score_kem
library(dplyr)
sort_kem <- arrange(score_kem, 이름, 과목)
sort_kem
# sort_kem2 <- ddply(sort_kem,"이름",transform,누적합계=cumsum(점수))
sort_kem2 <- sort_kem %>%
  group_by(이름) %>%
  mutate(누적합계=cumsum(점수))
sort_kem2
# sort_kem3 <- ddply(sort_kem2,"이름",transform,누적합계=cumsum(점수),
#                    label=cumsum(점수)-0.5*점수)
sort_kem3 <- sort_kem2 %>%
  group_by(이름) %>%
  mutate(label=cumsum(점수)-0.5*점수)
sort_kem3
sort_kem4 <- sort_kem %>%
  group_by(이름) %>%
  mutate(누적합계=cumsum(점수)) %>%
  mutate(label=cumsum(점수)-0.5*점수)
sort_kem4
sort_kem5 <- sort_kem %>%
  group_by(이름) %>%
  mutate(누적합계=cumsum(점수), label=cumsum(점수)-0.5*점수)
sort_kem5
ggplot(sort_kem5, aes(x=이름, y=점수, fill=과목)) + 
  geom_bar(stat="identity") +
  geom_text(aes(y=label, label=paste(점수,'점')), colour="black",
            size=4)

ggplot(sort_kem5, aes(x=이름, y=점수, fill=과목)) + 
  geom_bar(stat="identity") +
  geom_text(aes(y=label, label=paste(점수,'점')), colour="black",
            size=4) +
  # guides(fill=guide_legend(reverse=T)) +
  theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1,
                                 colour="black", size=8))

score <- read.table("data/학생별전체성적_new.txt",header=T,sep=",")
score
score_eng <- score[, c('이름','영어')]
ggplot(score, aes(x=영어, y=reorder(이름,영어))) +
  geom_point(size=4) +
  theme_classic() +
  theme(panel.grid.major.x=element_blank( ) ,
        panel.grid.minor.x=element_blank( ) ,
        panel.grid.major.y=element_line(color="red",
                                        linetype="dashed"))

ggplot(score, aes(x=영어, y=reorder(이름,영어))) + 
  geom_segment(aes(yend=이름), xend=0, color="blue") +
  geom_point(size=6, color="green") +
  theme_bw() +
  theme(panel.grid.major.y=element_blank())

mtcars
str(mtcars)
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point()
ggplot(mtcars, aes(x=hp , y=disp)) +
  geom_point()
ggplot(mtcars, aes(x=hp , y=disp)) +
  geom_point(colour='blue')
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(color=factor(am))) 
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(color=factor(am), size=5)) 
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(color=factor(am), size=wt)) 
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(shape=factor(am), size=wt))
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(shape=factor(am), color=wt))
# 종류별로 크기, 모양, 색상 지정하기
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(shape=factor(am), color=factor(am), size = wt)) + 
  scale_color_manual(values=c("red","green"))

ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(color='red') +
  geom_line(colour='blue')

par(oma=c(12, 10, 12, 10))    # 여백 조정
ggplot(mtcars, aes(x=hp , y=mpg)) +
  geom_point(aes(shape=factor(am), color=factor(am), size = wt)) + 
  scale_color_manual(values=c("red","green")) +
  labs(x="마력" , y="연비(mile/gallon)")

three <- read.csv("data/학생별과목별성적_3기_3명.csv")
three
sort_score <- arrange(three, 이름, 과목)
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름)) + 
  geom_line()
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름)) + 
  geom_line() +
  geom_point(size=3)
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름, 
                       fill=이름)) + 
  geom_line() +
  geom_point(size=3, shape=22)
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름)) + 
  geom_line() +
  geom_point(size=3) +
  ggtitle("학생별 과목별 성적")

dis <- read.csv("data/1군전염병발병현황_년도별.csv",
                stringsAsFactors=F)
str(dis)
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + 
  geom_line()
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + 
  geom_area()
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + 
  geom_area(color="red", fill="cyan", alpha=0.4)
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + 
  geom_area(fill="cyan", alpha=0.4) +
  geom_line(color='blue')