install.packages("reshape2")
library(reshape2)
Fruits
melt(fruits, id='year')
fruits  
melt(fruits, id = c('year','name'))
melt(fruits, id=c('year', 'name'), variable.name='var_name', 
     value.name = 'val_name')


mtest <- melt(fruits,id=c('year','name'),variable.name='var_name',
              value.name='val_name')     
mtest
dcast(mtest,year+name~var_name)
dcast(mtest,year~var_name)
dcast(mtest,name~var_name,sum)
dcast(mtest,name~var_name,sum,subset=.(name=='apple'))

install.packages('stringr')
library(stringr)
fruits <-c('Apple', 'banana', 'apeach', 'melonaa')
str_detect(fruits, 'A')
str_detect(fruits, '^a')
str_detect(fruits, 'e$')
str_detect(fruits, '^[aA]')
str_detect(fruits,'[aA]')


#ignore.case() function 
str_detect(fruits, ignore.case('a'))

str_detect(fruits, regex('a', ignore_case =T ))

str_count(fruits,'a')
str_count(fruits, regex('a', ignore_case = T ))

str_c("apple","banana")
str_c("Fruits :", fruits)
str_c(fruits," name is ",fruits)
str_c(fruits,collapse="")
str_c(fruits,collapse="-")

#str_dup() function duplication
str_dup("Hi   ",3)
str_dup(fruits, 3)
str_length('apple')
str_length(fruits)

fruits
#locate funciton
str_locate('apple','a')
str_locate(fruits, regex('a', ignore_case = T))
str_locate('apple','app')


str_replace('apple','p','%')
str_replace_all('apple','pple','p')

fruits <- str_c('apple','/','orange','/','banna')
fruits
str_split(fruits,"/")

str_sub(fruits,start=1,end=3)
str_sub(fruits,start = 6,end=9)
str_sub(fruits,start=7)
str_sub(fruits,start=-5) #start from the back


str_trim('            apple banna beryyy             ')
str_trim('\t  apple banna beryyy      ')
str_trim('   apple banana    \n')

print("There are 3 R-DBMS languages")
# Data Control Language (DCL)
# Data Manipulation Language (DML)
# Data Defination Language(DDL)