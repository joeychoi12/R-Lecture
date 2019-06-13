#과제 도전미션 3-6
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/과제/")
library(ggplot2)
library(dplyr)
library(RColorBrewer)
library(reshape2)


data <- read.csv("버스노선별이용현황합계.csv",stringsAsFactors = FALSE)
head(data1)
colname <- data1$버스노선번호;
data2 <- melt(data, id = '버스노선번호',variable.name = "승하차" , value.name = "이용승객수")
data2$이용승객수 <- data2$이용승객수 / 1000

data2
ggplot(data2,aes(x=버스노선번호,y=이용승객수,fill= 승하차),group=1) + 
  geom_bar(stat = "identity",width=0.5, position = "dodge")+ 
  ggtitle(paste("서울 주요 마을 버스 이용 승객 현황(2014년 1월)")) +
  theme(plot.title = element_text(face="bold", hjust = 0.5, size=15, color="darkblue")) + 
  theme(axis.text.x=element_text(angle=45,hjust=1,vjust=1,colour = "black",size =8)) + 
  ylab("이용승객수 (단위 천명)") + 
  geom_text(aes(label=data2$이용승객수),size = 2 )  
  
#과제 도전미션 3-7 
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/과제/")
#마포 09번 마을버스 이용 현황 분석 
data <- read.csv("마포09번이용현황.csv")
#setting sepcific order for x axis by using unique function
data$정류소명 <- factor(data$정류소명, levels=unique(data$정류소명))

data$정류소명 <-colnames
head(data)  
data2 <- melt(data, id= c("정류소명"),variable.name = '승하차', value.name = '이용승객수') 
head(data2)
ggplot(data2, aes(x=정류소명, y=이용승객수, fill = 승하차, color = 승하차)) + 
  geom_point() + 
  geom_line(aes(group = 승하차)) +
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,colour = "black",size =8)) + 
  ggtitle("마포09번 이용 승객수(단위:명) - 2014년 1월 기준") +
  theme(plot.title = element_text(face="bold", hjust = 0.5, size=15, color="darkblue")) +
  geom_hline(yintercept = seq(0,40000,5000), lty='dotted', size = 0.1) 
  
#과제 도전미션 3-5
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/과제")
#전염병 선그래프 년별도 발병 현황
data <- read.csv("1군전염병발병현황_년도별.csv")
head(data)
data2 <- melt(data,id = "년도별", variable.name = "전염병",value.name = "건수")
head(data2)
ggplot(data2,aes(년도별,건수,fill= 전염병,color=전염병)) +
  geom_line(aes(group = 전염병)) + 
  geom_point() + ylim(c(0,6000)) + 
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,colour = "black",size =8)) + 
  ggtitle(paste("1군 전염병 발병 현황-년도별(단위:건수)", "\n","출처: 통계청")) +
  theme(plot.title = element_text(face="bold", hjust = 0.5, size=15, color="darkblue")) +
  geom_hline(yintercept = seq(0,6000,200), lty='dotted', size = 0.1) + xlab(" ") + ylab("")  
  

#월별 발병 현황
data<- read.csv("1군전염병발병현황_월별.csv")
head(data)
#setting month as unique 
data
data$월별 <- factor(data$월별,levels = unique(data$월별))
data2 <- melt(data,id="월별", variable.name = "전염병", value.name = "건수")
head(data2)
ggplot(data2,aes(월별,건수,fill= 전염병,color=전염병)) +
  geom_line(aes(group = 전염병)) + 
  geom_point() + ylim(c(0,1500)) + 
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,colour = "black",size =8)) + 
  ggtitle(paste("1군 전염병 발병 현황-월별(단위:건수)", "\n","출처: 통계청")) +
  theme(plot.title = element_text(face="bold", hjust = 0.5, size=15, color="darkblue")) +
  geom_hline(yintercept = seq(0,1500,100), lty='dotted', size = 0.1) + xlab(" ") + ylab("")  

#A형 간염을 제외한 발생 현황
data <- read.csv("1군전염병발병현황_년도별.csv")
head(data)
data2 <- melt(data,id = "년도별", variable.name = "전염병",value.name = "건수")
data3 <- data2 %>% 
  filter(!data2$전염병 == "A형간염")
ggplot(data3,aes(년도별,건수,fill= 전염병,color=전염병)) +
  geom_line(aes(group = 전염병)) + 
  geom_point() + ylim(c(0,1500)) + 
  theme(axis.text.x=element_text(angle=90,hjust=1,vjust=1,colour = "black",size =8)) + 
  ggtitle(paste("1군 전염병 발병 현황-년도별(단위:건수)", "\n","A형간혐제외","\n","출처: 통계청")) +
  theme(plot.title = element_text(face="bold", hjust = 0.5, size=15, color="darkblue")) +
  geom_hline(yintercept = seq(0,1500,100), lty='dotted', size = 0.1) + xlab(" ") + ylab("")  
