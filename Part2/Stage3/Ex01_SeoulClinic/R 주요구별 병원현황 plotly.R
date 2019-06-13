#예제 3-1: 서울시 주요 구의 의원 현황을 분석 
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/Ex01_SeoulClinic")
library(ggplot2)
library(stringr)
library(dplyr)
library(reshape2)
options(repos = c(CRAN = "http://cran.rstudio.com"))
install.packages("plotly")

data <- read.csv("2013년_서울_주요구별_병원현황.csv")
class(data)
barplot(as.matrix(data[1:9,2:11]),
        main= paste("서울시 주요 구별 병원 현황-2013년", "\n",
                    출처[국민건강보험공단]),ylab='병원수', beside = T,
        col=rainbow(8),ylim=c(0,350))
abline(h=seq(0,350,10), lty=3,lwd=0.2)
name <- data$표시과목
name
legend(75, 350, name,cex = 0.8, fill = rainbow(8),bg="yellow")
data
#into ggplot
data <- data %>% 
  mutate()

  
ggplot(data[1:9,2:11], aes(x = names(data[1:9,2:11]), y=Freq) + 
  geom_bar(width= 1,stat = "identity")

data[1:9,2:11]
names(data[1:9,2:11])
View(data)
clinic <- read.csv("2013년_서울_주요구별_병원현황.csv")
head(clinic,10)

ggplot(clinic, aes(x=지역명,y=의원수, fill=표시과목)) + 
  geom_bar(position = 'dodge',stat = 'identity') + 
  geom_hline(yintercept = seq(0,330,10), lty="dashed",size=0.1) + 
  ggtitle(paste("서울시 주요 구별 병원 현황-2013년", "\n",
                출처[국민건강보험공단]) + theme(plot.title = element_text(face="bold",
                                                                hjust = 0.5, size=15, color="darkblue"))

df_long <- melt(data, id=c('표시과목'), variable.name='지역명',value.name = '의원수')
head(df_long)
p<- ggplot(df_long, aes(x=지역명,y=의원수, fill=표시과목)) + 
  geom_bar(position = 'dodge',stat = 'identity') + 
  geom_hline(yintercept = seq(0,330,10), lty="dashed",size=0.1) + 
  ggtitle(paste("서울시 주요 구별 병원 현황-2013년", "\n", "출처[국민건강보험공단]")) +
  theme(plot.title = element_text(face="bold", hjust = 0.5, size=15, color="darkblue"))


#Interactive Graph          
library(plotly)
#Wirde formate to long formate
ggplotly(p)
