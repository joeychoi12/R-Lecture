library(dplyr)



#1 Scatter Plot

setosa <- iris %>%  filter(Species == 'setosa')
versicolor <- iris %>%  filter(Species == 'versicolor')
virginica <- iris %>% filter(Species == 'virginica')

par(mfrow=c(3,2))
plot(setosa[,1:2], main="Setosa")
plot(setosa[,3:4], main="Setosa")
plot(versicolor[,1:2], main="Versicolor")
plot(versicolor[,3,4], main="Versicolor")
plot(virginica[,1:2], main="Virginica")
plot(virginica[,3:4], main="Virginica")

png("Q_1.png",600,600)

#2 품종별 평균치로 Barplot으로 비교 
par(mfrow=c(1,2))
par(mar=c(1,1,1,1))
avg_chart <- aggregate(iris[,1:4], list(iris$Species), mean)
avg_chart <- avg_chart[,2:5]

barplot(as.matrix(avg_chart), main= "Average Sepal and Petal length width", 
        beside = T,col=rainbow(nrow(avg_chart)),ylim=c(0,10))

legend(1,9, c("Setosa", "Verisicolor","Virginica"),cex=0.8,fill=rainbow(nrow(avg_chart)))

barplot(t(avg_chart), main="Average Sepal and Petal Length width by Species",ylim = c(0,35),col = rainbow(length(avg_chart)),
        names.arg = c("Setosa","Versicolor","Virginica"))


png("Q2.png", 600,600)

#t(avg_chart)
#avg_chart
#barplot(t(avg_chart)
#barplot(avg_chart)


#3 Boxplot 12개 그리기 
setosa <- iris %>%  filter(Species == 'setosa')
veriscolor <- iris %>%  filter(Species == 'versicolor')
virginica <- iris %>% filter(Species == 'virginica')

par(mfrow=c(3,1))
veriscolor

boxplot(setosa[,1:4],col = c('blue','yellow','red'),horizontal = T, main = "Satosa") 
boxplot(veriscolor[,1:4],col = c('blue','yellow','red'),horizontal = T,  main = "Versicolor")
boxplot(virginica[,1:4],col = c('blue','yellow','red'),horizontal = T, main = "Virginica")

png("q__1.png",600,600)












######################################

# IRIS Data Graph
View(iris)
boxplotIris <- iris[,1:4]
boxplotIris
boxplot(boxplotIris)


dev.off()


#IRIS data bar chart
par(mfrow=c(3,2))
par(mar=c(1,1,1,1))

#plot sepal Length and width 
for(i in 1:3) {
  if(i == 1){
    species_Name <- 'setosa'
  }  
  else if (i == 2) {
    species_Name <- 'versicolor'
  }
  else if(i ==3) {
    species_Name <- 'virginica'
  }
  i <- 1+i

  names <- iris %>%  filter(Species == species_Name)
  graph <- names %>% select(Sepal.Length,Sepal.Width) 
  plot(graph, xlab = "Sepal Length", ylab = "Sepal Width", main= cat(species_Name," Sepal Length and Width")

  graph2 <- names %>% select(Petal.Length,Petal.Width)
  plot(graph2, xlab = "Petal Length", ylab = "Petal width", main="Setosa Petal Length and Width")
}