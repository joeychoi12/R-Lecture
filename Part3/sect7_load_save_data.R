list.files()
scan1 <- scan('scan_1.txt')
scan1
scan2 <- scan('scan_2.txt') #1.00 2.00 3.00 4.00
scan2
scan2 <- scan('scan_2.txt',what=""); scan2
scan3 <- scan('scan_3.txt',what=""); scan3
scan4 <- scan('scan_4.txt',what=""); scan4
input <- scan()
input
input <- scan(what="")
input
input3 <- readline()
input3
input4 <- readline("Are you OK? :")
input5 <- readLines('scan_4.txt')
input5


#Reading data from other source and the letting the program know that there is a header by setting header = T
fruits <- read.table('fruits.txt')
fruits
fruits <- read.table('fruits.txt' , header =T) ; fruits

#Reading data when not there are comments that user do not wish to import back into the program by default
fruits2 <- read.table('fruits_2.txt', header = T) ; fruits2

#Skipping data using skip = 
fruits2 <- read.table('fruits_2.txt',skip=2); fruits2
#Only producing data you want using nrows=
fruits2 <- read.table('fruits_2.txt',nrows=2); fruits2
f2top <-read.table('fruits_2.txt',nrows=2)
f2bottom <-read.table('fruits_2.txt',skip=3); fruits2
f2top ; f2bottom

#reading csv filrs using read.csv
fruit3 <- read.csv('fruits_3.csv') ; fruit3

#When reading csv files the default is that the first line is the header 
#When reading text files(table) the default is that there is no header

fruits4 <- read.csv('fruits_4.csv') ; fruits4 #When there is no header

fruits4 <- read.csv('fruits_4.csv', header = F) ; fruits4 #Set header as faulse

#Adding Header
label <-c('NO', 'NAME', 'PRICE', 'QTY')
fruit4 <- read.csv('fruits_4.csv', header = F, col.names = label)
fruit4

#install googleVIs packages
install.packages("googleVis")
library(googleVis)
install.packages("sqldf")
library('sqldf')
Fruits

#SELECT * from DB_table 
#WHERE Year = 2008

#write fruits sql csv file 
write.csv(Fruits, "Fruits_sql.csv", quote=F, row.names = F)
fruits_2 <-read.csv.sql("Fruits_sql.csv",sql="SELECT * FROM file WHERE Year = 2008")
fruits_2

install.packages("XLConnect")
installed.packages()
library(XLConnect)
data1 <- loadWorkbook('fruits_6.xls', create=T)
data2 <- readWorksheet(data1,sheet='sheet1', startRow = 1, endRow = 8, startCol = 1, endCol = 5)
data2
fruits6 <- read.delim("clipboard", header=T)
fruits6

install.packages('readxl')
library(readxl)
fruits7 <- read_excel("fruits_6.xls", # path
  sheet = "Sheet1", # sheet name to read from
  range = "A2:D6", # cell range to read from
  col_names = TRUE, # TRUE to use the first row as column names
  col_types = "guess", # guess the types of columns
  na = "NA") # Character vector of strings to use for missing values
fruits7
subset(Fruits, Fruits$Year==2008)

