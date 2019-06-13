setwd("D:/workspace/R_Data_Analysis/Part2/Stage3/Ex3-5Insurance2")
count <- read.csv('연도별요양기관별보험청구금액_2004_2013_세로.csv',stringsAsFactors = FALSE)



count1 <- melt(count,id=c("년도"),variable.name = "병원이름", value.name = "금액")
count1$금액 <- count1$금액 /1000000
options(digist=2)

ggplot(count1, aes(x=년도,y=금액,fill=병원이름,color=병원이름)) + 
  geom_line(linetype = 1, size=1) + 
  geom_point(size=1) + 
  geom_hline(yintercept = seq(0,8000,1000), lty='dotted', size = 0.1) +
  theme_bw(base_family = "malgun",base_size = 12) + 
  ggtitle(paste("연도별 요양 기관별 보험 청구 금액 현황 (단위:백만원)", "\n", "출처: 건강보험심사평가원")) + 
  theme(plot.title = element_text(family = "malgun",
                                  face = "bold",
                                  hjust = 0.5,
                                  size = 15,
                                  color = "black"))

warnings()

