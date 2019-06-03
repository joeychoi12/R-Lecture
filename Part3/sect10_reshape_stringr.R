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
