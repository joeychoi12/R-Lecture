library(googleVis)
sort1 <- Fruits$Sales 
sort1
sort(sort1)
sort(sort1, decreasing = T)

install.packages('plyr')
library(plyr)
fruits <- read.csv('fruits_10.csv', header = T)
fruits
ddply(fruits, 'name', summarise, sum_qty=sum(qty), sum_price=sum(price))
ddply(fruits, 'name', summarise, sum_qty=sum(qty), sum_price=min(price))
ddply(fruits, c('year','name'), summarise, sum_qty=sum(qty), sum_price=min(price))
ddply(fruits, 'name', transform, sum_qty=sum(qty), pct_qty=(100*qty/sum(qty)))


#dplyr() 패키지
#filter, select, arrange, mutate, summarise(with group_by)
#mutate -> using original variables to create new variables
#summarise(with group_by) -> min, max, mean, count
options(repos = c(CRAN = "http://cran.rstudio.com"))
install.packages('dplyr') 
library(dplyr)
data1 <- read.csv("2013년_프로야구선수_성적.csv")
data1      

#경기수가 120 경기 이상인 선수만 출력 
data2 <- filter(data1, 경기>120)
data2 <- filter(data1, 홈런>20)
filter(data1, 경기>120 & 득점>80)
filter(data1, 포지션 =='1루수' | 포지션=='3루수')
filter(data1, 포지션 %in% c('1루수','3루수'))
select(data1, 선수명,포지션,팀)
select(data1, 순위:타수)       
#removing certain columns by using -col_name
select(data1, -선수명, -팀 )
#여러 문장을 조합해서 사용하는 방법: %>%
data1 %>% 
  select(선수명, 팀, 경기, 타수) %>%
  filter(타수 > 400)

data1 %>%
  select(선수명, 홈런, 포지션,타수) %>%
  filter(포지션 %in% c('1루수', '3루수')) %>%
  arrange(desc(타수))

data1 %>% 
  select(선수명, 경기, 타수, 홈런, 팀, 연봉) %>%
  arrange(desc(타수), desc(경기))

data1 %>%
  select(선수명, 경기, 타수, 팀) %>%
  mutate(경기x타수 = 경기*타수) %>%
  arrange(경기x타수)
data1 %>%
  select (순위, 선수명, 팀, 출루율, 장타율) %>%
  mutate(OPS = 출루율 + 장타율) %>%
  arrange(desc(OPS))

data1 %>%
  group_by(팀) %>%
  summarise(average = mean(경기, na.rm = T))

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean), 경기, 타수, 타율)

data1 %>%
  group_by(팀) %>%
  summarise_each(list(mean), 경기, 타수, 타율)

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean, n()), 경기, 타수, 타율)


#연습문제 P413
#1
attach(Fruits)
#Extracting Expenses that is bigger than 80
filter(Fruits, Expenses>80) 

#2 Expenses that are bigger than 90 and also Sales bigger than 90
filter(Fruits, Expenses>90 & Sales > 90)

#3 Expense or Sales more than 80 
filter(Fruits, Expenses>80 | Sales > 80)

#4 Expenses = 79 & 91 
filter(Fruits, Expenses == 79 | Expenses == 91)
filter(Fruits, Expenses %in% c(79,91))

#5 Fruits - Sales leave out Location 
select(Fruits, Fruit:Sales, -Location)

#6 Fruits Data set the average of all fruits
Fruits %>%
  group_by(Fruit) %>%
  summarise(average = sum(Sales, na.rm = T))

#7 Sales and Profit
Fruits %>%
  group_by(Fruit) %>%
  summarise_each(funs(sum), Sales, Profit)



