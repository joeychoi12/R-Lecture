#관계도
install.packages("igraph")
library(igraph)
g1 <- graph(c(1,2, 2,3, 2,4, 1,4, 5,5, 3,6))
plot(g1)
str(g1)

name <- c('서진수 대표이사','일지매 부장','김유신 과장','손흥민 대리','노정호 대리',
           '이순신 부장','유관순 과장','신사임당 대리','강감찬 부장','광개토 과장','정몽주 대리')
pemp <- c('서진수 대표이사','서진수 대표이사','일지매 부장','김유신 과장','김유신 과장',
         '서진수 대표이사','이순신 부장', '유관순 과장','서진수 대표이사','강감찬 부장','광개토 과장') 
emp <- data.frame(이름=name, 상사이름=pemp)
emp
str(emp)

g<- graph.data.frame(emp,directed = T)
plot(g,layout=layout.fruchterman.reingold, vertex.size=8, edge.arrow.size=0.5)
png("graph/network_2.png",width= 600, height=600)
dev.off()

g<- graph.data.frame(emp,directed = F)
plot(g,layout=layout.fruchterman.reingold, vertex.size=8, edge.arrow.size=0.5,vertex.label = NA)


g<- graph.data.frame(emp,directed = F)
plot(g,layout=layout.kamada.kawai, vertex.size=8, edge.arrow.size=0.5,vertex.label = NA)

install.packages("devtools")
install.packages("d3Network")
library(d3Network)
name <- c('Angela Bassett','Jessica Lange','Winona Ryder','Michelle Pfeiffer',
          'Whoopi Goldberg','Emma Thompson','Julia Roberts','Sharon Stone','Meryl Streep',
          'Susan Sarandon','Nicole Kidman')

pemp <- c('Angela Bassett','Angela Bassett','Jessica Lange','Winona Ryder','Winona Ryder',
                   'Angela Bassett','Emma Thompson', 'Julia Roberts','Angela Bassett',
               'Meryl Streep','Susan Sarandon')

emp <- data.frame(이름 = name, 상사이름=pemp)
d3SimpleNetwork(emp,width = 600,height = 600,file="data/d3.html")


g <- read.csv('군집분석.csv')
graph <- data.frame(학생=g$학생,교수=g$교수)
g <- graph.data.frame(graph,directed=T)
plot(g,layout=layout.fruchterman.reingold,vertex.size=2,edge.arrow.size=0.5,vertex.color="green",vertex.label=NA)
plot(g,layout=layout.kamada.kawai,vertex.size=2,edge.arrow.size=0.5,vertex.color="green",vertex.label=NA)

g<- read.csv("군집분석.csv",head =T)
graph <- data.frame(학생=g$학생,교수=g$교수)

g <- graph.data.frame(graph,directed = T)
g

V(g)$name
gubun1 <- V(g)$name
gubun1
gubun <- str_sub(gubun1,start=1,end=1)
library(stringr)
gubun


colors <- c()
for (i in 1:length(gubun)) {
  if(gubun[i] =='S') {
    colors <- c(colors,"red")
  }else{
    colors <-c(colors,"green")
    
  }
}

sizes <- c()
for (i in 1:length(gubun)) {
  if(gubun[i] == 'S') {
    sizes <- c(sizes,2)}
  else{
    sizes <- c(sizes,6)
  }
}

plot(g,layout=layout.fruchterman.reingold, vertex.size = sizes, edge.arrow.size=0.5,
     vertex.color = colors, vertex.label = NA )
plot(g, layout=layout.fruchterman.reingold, vertex.size = sizes, edge.arrow.size = 0, vertex.color = colors, vertex.label = NA)

png("군집_색상크기조절.png", 600,600)
plot(g, layout=layout.kamada.kawai, vertex.size = sizes, edge.arrow.size = 0, vertex.color = colors, vertex.label = NA)

shapes <- c()
for (i in 1:length(gubun)) {
  if (gubun[i] == "S" {
    shapes <- c(shapes,"circle")}
  else {
    shapes <-c(shapes,"square")
  }
}

virus1 <- read.csv("메르스전염현황.csv",header=T)
d3SimpleNetwork(virus1,width=600,height=600,file="mers.html")
> d3SimpleNetwork(virus1,width=600,height=600,file="c:\\r_temp\\mers.html")

