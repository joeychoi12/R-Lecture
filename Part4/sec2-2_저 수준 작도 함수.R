#저 수준 작도 함수 
dev.off()
var1 <- 1:5
plot(var1)
segments(2,2,3,3) 
rect(1,6,3,8) #draw rect
abline(h=8) #draw line
arrows(1,1,5,5) #Draw Arrows
text(1,4,'labels') 


par(mar=c(1,1,1,1), mfrow=c(1,1))


abline(h=8) #draw line
arrows(1,1,5,5) #Draw Arrows
text(8,9,"TEXT") #Write Text

VIEW(iris)
View(iris)
