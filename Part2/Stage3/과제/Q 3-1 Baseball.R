#도전 미션 3-1 프로 야구 선수 밥값하나요? 
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/Ch3-1 Baseball player")
library(ggplot2)
library(dplyr)
library(RColorBrewer)

data <- read.csv("야구성적.csv")
head(data)
data <- data %>% 
  mutate(OPS = 출루율 + 장타율)
palete <- brewer.pal() 
avg <- mean(data$연봉대비출루율)
avg
ggplot(data, aes(선수명,연봉대비출루율,fill = 선수명)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = getPalette(colourCount)) + 
  geom_hline(yintercept = avg ) + 
  geom_text(aes(3,avg,label = paste(avg,"%"," (평균출루율)",sep = ""), vjust = -1), size = 3.2) + 
  ggtitle(paste("야구 선수별 연봉 대비 출루율 분석","\n","(밥값여부계산)")) +
  geom_text(aes(label=data$연봉대비출루율))

ggplot(data,aes(선수명, 연봉대비출루율,fill = 선수명)) +
  geom_bar(stat= "identity") + 
  coord_polar()
    
  

colourCount = length(unique(data$선수명))
getPalette = colorRampPalette(brewer.pal(9, "Set1"))

ggplot(mtcars) + 
  geom_histogram(aes(factor(hp)), fill=getPalette(colourCount)) 


####################################
ggplot(data, aes(선수명,연봉대비출루율,fill = 선수명)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values = getPalette(colourCount)) + 
  geom_hline(yintercept = avg ) + 
  geom_text(aes(5,avg,label = paste(avg,"%"," (평균출루율)",sep = ""), vjust = -1), size = 3.2) + 
  ggtitle(paste("야구 선수별 연봉 대비 출루율 분석","\n","(밥값여부계산)")) +
  geom_text(aes(label=data$연봉대비출루율)) + 
  theme(axis.text.x=element_text(angle=45,hjust=1,vjust=1,colour = "black",size =8))


palete <- c(brewer.pal(12, 'Paired'),
            brewer.pal(12, Paired), '#56B4E9')
mean_ops_per_income = mean(bb)

################################# GGPlot pie 
ggplot(data,aes(선수명, 연봉대비출루율,fill = 선수명)) +
  geom_col(width = 1) + 
  coord_polar('y') +
  facet_wrap(~선수명)

data <- data %>%
  mutate(연봉대비타점율 <- 타점/연봉)

View(data)
p <- ggplot(data,aes(선수명,연봉대비출루율,group =2)) +
  geom_line(linetype = 2,size =0.8) +
  geom_point(size=2)  
p <- p+ geom_line(aes(선수명,타율/연봉),linetype = 2,size=0.8) + 
  geom_point(size=2)
p




