install.packages("sqldf")
library(sqldf)
Fruits
sqldf('SELECT * FROM Fruits')
sqldf('SELECT * FROM Fruits WHERE Fruit=\'Apples\'')
sqldf("SELECT * FROM Fruits WHERE Fruit='Apples'")
sqldf('SELECT * FROM Fruits Limit 3')    # = LIMIT 0,3
sqldf('SELECT * FROM Fruits Limit 0, 3') #Same thing
sqldf('SELECT * FROM Fruits Limit 3, 53') 
sqldf('SELECT * FROM Fruits Order By Year')
sqldf('SELECT * FROM Fruits Order By Year DESC')
sqldf('SELECT FRUIT, SUM(Sales) FROM Fruits GROUP BY Fruit ')
sqldf('SELECT Fruit, sum(Sales), sum(Expenses), sum(Profit) 
      from Fruits group by Fruit')
sqldf('SELECT Year as \'YEAR\', avg(Sales) as \'Sales\', avg(Expenses) as \'Expenses\', avg(profit) as \'Profit\' 
      From Fruits group by Year')
sqldf('SELECT Year as \'연도\', avg(Sales) as \'판매\', avg(Expenses) as \'지출\', avg(profit) as \'매출\' 
      From Fruits group by Year Order by avg(Profit) desc')
sqldf('SELECT Fruit , Max(Sales), Min(Sales) From Fruits Group By Fruit')
sqldf('SELECT Fruit , Max(Sales), Min(Sales) From Fruits')
sqldf('SELECT * FROM Fruits where Sales =81')
sqldf('SELECT * FROM Fruits where Sales = 
      (select min(Sales) from Fruits)')

# sqldf('SELECT * FROM Fruits Where Sales IN 
#       (select min(Sales), max(Sales) FROM Fruits)')

song <- read.csv("song.csv", header = F, fileEncoding = 'utf8')

# Writing the Header for table
colnames(song) <- c("_id", "title", "lyrics", "girl_group_id")
names(song) <- c("_id", "title", "lyrics", "girl_group_id")
 
girl_group <- read.csv("girl_group.csv", header = F, fileEncoding = 'utf8')
names(girl_group) <- c('_id', 'name', 'debut')
library(sqldf)
library(googleVis)
Fruits
sqldf('UPDATE Fruits SET Profit = 40 WHERE Fruit=\'Apples\' AND Year =2008')
sqldf("SELECT * FROM Fruits")

#화면에 보이는 내용만 변경 
sqldf(c('UPDATE Fruits SET Profit = 40 WHERE Fruit=\'Apples\' AND Year =2008', 
      'SELECT * FROM FRUITS'))
