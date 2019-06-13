#예제 3-3: 서울시 주요 구의 의원 현황을 구글 차트로 보여주기 
setwd('D:/workspace/R_Data_Analysis/Part2/Stage3/Ex3-3 Google Chart')
library(googleVis)

data <- read.csv("2013년_서울_구별_주요과목별병원현황_구글용.csv")
data
host<-gvisColumnChart(data,options=list(title="지역별 병원현황",height=400,weight=500))

header <- host$html$header
header
str_replace("utf-8",)
header <- gsub("charset=utf-8", 'charset=euc-kr', header)
header
host$html$header <- header
plot(host)
