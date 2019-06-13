#과제 도전미션 3-3, 3-4, 3-5
setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/과제/")
library(ggplot2)
library(dplyr)
library(RColorBrewer)
library(readxl)

age15 <-read.csv("2000-2013년 연령별실업율_15-19세.csv", stringsAsFactors = FALSE) 
age20 <-read.csv("2000-2013년 연령별실업율_20-29세.csv")
age30 <-read.csv("2000-2013년 연령별실업율_30-39세.csv")
age40 <-read.csv("2000-2013년 연령별실업율_40-49세.csv")
data <- merge.data.frame(c(age15,age20,age30,age40))
avg <- read.csv("2000-2013년 연령별실업율_연령별평균.csv", stringsAsFactors = FALSE)
head(avg)
data <- melt(avg, id = c("연령별"), variable.name = "연도", value.name = "실업율")


data <- data %>%
  group_by(연도,연령별) %>%
  summarise( mean(실업율))
head(data,30)
ggplot(data,aes(연도,실업율, fill = 연령별)) + 
  geom_line(linetype = 2, size = 1)
#geom_point() + 
#geom_smooth()


head(data,30)
