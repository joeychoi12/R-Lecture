library(ggplot2)
mpg
View(mpg)

#1 displ(배기량)이 4 이하인 자동차와 5 이상인 자동차의 HWY 고속도로 연비의 평균 비교 

four_lower <-mpg %>% 
  filter(displ<=4) %>%
  summarise(avg1 = mean(hwy))


five_higher <- mpg %>%
  filter(displ>=5) %>%
  summarise(avg2 = mean(hwy))

append(four_lower, five_higher)


#mpg %>%
#  mutate(av1 = mean())
#  summarise_each(funs(mean), 경기, 타수, 타율)


#2 Audi vs Toyota which manufacturer has a higher cty
mpg %>%
  group_by(manufacturer) %>%
  summarise(average = mean(cty)) %>%
  filter(manufacturer %in% c('audi','toyota'))

#A: Toyota has better cty

#3Chevy vs Ford vs Honda hwy average 
mpg %>%
  filter(manufacturer %in% c('chevrolet', 'ford', 'honda')) %>%
  summarise(average = mean(hwy))

#4 Making new data using class and cty variable
new_mpg <- mpg %>%
  select(class,cty)
new_mpg  


#5 Which class has a better cty?
new_mpg %>%
  group_by(class) %>%
  summarise_each(funs(mean), cty) %>%
  filter(class %in% c('suv','compact'))          

#6 From Audi's products which rank 1-5 for best hwy
new1_mpg <- mpg %>%
  filter(manufacturer == "audi",) %>%
  arrange(desc(hwy))
head(new1_mpg, 5)  


#7-1 make mpg copy, hwy+cty 합산 연비 변수 fuel 
#copy
mpg_copy <- mpg
mpg_copy <- mpg_copy %>%
  mutate(fuel = hwy + cty)

#7-2 divide fuel by 2 create fuel average variable fuelavg 
mpg_copy <- mpg_copy %>%
  mutate(fuelavg = fuel / 2)

#7-3 export 3 data with the hieghet fuel average 
mpg_top3 <- mpg_copy %>%
  arrange(desc(fuelavg))
  
head(mpg_top3,3)

#7-4 Step 1-3 in one dplyr 
mpg %>%
  mutate(fuelavg = (hwy + cty)/2) %>%
  arrange(desc(fuelavg)) %>%
  head(5)

#8 cty average by class 
mpg %>% 
  group_by(class) %>%
  summarise(mean(cty))


#9 cty average order
mpg %>% 
  group_by(class) %>%
  summarise(ctyavg = mean(cty)) %>%
  arrange(desc(ctyavg))


#10 Which company has the highest hwy average Top3 
mpg %>%
  group_by(manufacturer) %>%
  summarise(hwyavg = mean(hwy)) %>%
  arrange(desc(hwyavg)) %>%
  head(3)

#11 Which comp produce the most compact cars 
mpg %>%
  group_by(manufacturer) %>%
  summarise_each(funs(n()), class) %>%
  arrange(desc(class))

