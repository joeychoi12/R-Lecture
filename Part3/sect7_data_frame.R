#Data Frame
#데이터프리임

#clear Enviroment list 
rm(list=ls())

#Setting individual Vector variables 
No <- c(1:4)
Name <- c('Apple','Peach','Pineapple','Guava')
Price <- c(500,200,100,950)
Qty <- c(5,2,4,7)

#Creating Data Frame using data.frame function 
sales <- data.frame(NO=No, NAME=Name, PRICE=Price, QTY=Qty) ; sales

sales2 <- matrix(c(1,'Apple', 500,5,
                   2,'Peach',200,2,
                   3, 'Banana', 100,4,
                   4,'Grape',50,7), nrow=4, byrow=T)
sales2
df1 <- data.frame(sales2)
df1
#Assigning names of the columns
names(df1) <- c('NO','NAME','PRICE','QTY') 
df1

#extracting all names from the DF
sales$NAME
#extracting one data point first row 3rd column
sales[1,3]
#extracting all 3rd column 
sales[,3]
sales$PRICE
#extracting first row
sales[1,]
#all of first two rows 
sales[c(1,2),]
#all of first two columns
sales[,c(1,2)]
sales[,c(1:3)]

#extracting specific data within the dataframe using subset() function 
#Logical valuem, less than, equal to, not equal to 
subset(sales,QTY<5)
subset(sales,PRICE==500)
subset(sales,PRICE!=500)
subset(sales,NAME=='Guava')

no <- c(1,2,3)
name <- c('apple','banana','peach')
price <- c(300,1200,50,20,10)
df1 <- data.frame(NO=no,NAME=name,PRICE=price)
df1
no<-c(10,20,30)
name<-c('train','car','airplane')
price<-c(1000,2000,3000)
df2<-data.frame(NO=no,NAME=name,PRICE=price)
df2

#column bind into a new dataframe
df3 <-cbind(df1,df2)
df3

#All names when combined columns show only the first NAME
df3$NAME
#Alternate way to retrieve other NAME data
df3[,5]


#row bind into a new dataframe
df4<-rbind(df1,df2)
df4

#merging two dataframes
df5<-data.frame(name=c('apple','banana','orange'),price=c(300,100,50))
df6<-data.frame(name=c('apple','banana','cherry'),qty=c(5,10,20))
#merging only shows the same category of data by default 
#SQL Inner Join 
merge(df5,df6)

#in order to show all data need to select all=T option. No data will come out as NA
#SQL Outer Join
merge(df5,df6,all=T)

#combine df5 & df6 to make one data frame 
cbind(df5,df6) ; cbind(df6,df5)


#Adding rows and columns in Data Frame 
new_row <- data.frame(NO=4,NAME="mango",PRICE=400)
df1 <-rbind(df1,new_row)
df1
new_fruit<-data.frame(NO="5",NAME='Mystery fruit',PRICE="???")
df1 <-rbind(df1,new_fruit)

positions <- order(df1$PRICE)
df1 <- df1[positions,]
df1 <- subset(df1, select=c(NAME,PRICE)) ;df1
df1.1 <- subset(df1, select=c(NAME)) ;df1.1

no <- c(1,2,3,4,5)
name <- c("서진수","주시현","최경우","이동근","윤정웅")
address <- c("서울","대전","포항","경주","경기")
tel <- c(1111,2222,3333,4444,5555)
hobby <- c("독서","미술","놀고먹기","먹고놀기","노는애감시하기")
member <- data.frame(NO=no,NAME=name,ADDRESS=address,TEL=tel,HOBBY=hobby)
member2 <- subset(member, select=c(NO,NAME,TEL)); member2
member3 <- subset(member, select=-TEL); member3
colnames(member3) <- c("번호","이름","주소","취미"); member3

sales
ncol(sales)
nrow(sales)
names(sales)
rownames(sales) <- c('Yi','Er','San','Si')
rownames(sales)
sales
ncol(sales)
sales[c(2,3,1),]
sales[,c(1,2,4,3)] ;sales



### Start over from Making New Data Frame ###
#List of Countries I want to visit and the plane ticket for round trip
rm(list=ls())
Name <- c('USA', 'Taiwan', 'Japan', "Singapore")
Price<- c(1500,250,150,350) 
Ranking <-c(2,1,3,4)
travel_df <- data.frame(Name=Name,Price=Price,Ranking=Ranking)
travel_df
positions <- order(travel_df$Ranking)
travel_df[positions,]
new_travel<- subset(travel_df,select = c(Name,Price))
new_travel
ncol(travel_df)
nrow(travel_df)
colnames(travel_df) <- c("나라",'가격','랭킹')
new_data <- data.frame(나라="Russia", 가격=600, 랭킹=5)
rbind(travel_df,new_data)
positions <- order(travel_df$가격)
travel_df[positions,]
