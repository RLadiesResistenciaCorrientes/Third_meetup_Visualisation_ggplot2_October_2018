install.packages("tidyverse")
install.packages("plotly")
library ("tidyverse","plotly")
install.packages("ggplot2")
library ("ggplot2")
#para saber donde se guardan los archivos
getwd()
#se puede guardar ahi el archivo propinas
propina<-read.csv('E:/propina.csv')

propina<-read.csv("G:/propina.csv")

#mi primer grafico con ggplot2
ggplot(data = propina, aes(x= total, y= propina)) + geom_point() + theme(aspect.ratio=1)

ggplot(data = propina, aes(x= total, y= propina, colour= sexo )) + geom_point() + theme(aspect.ratio=1)
ggplot(data = propina, aes(x= total, y= propina, I("red"))) + geom_point() + theme(aspect.ratio=1)                                                                                       
ggplot(data = propina, aes(x= total, y= propina, colour= sexo )) + geom_point(colour="blue") + theme(aspect.ratio=1)                                                                                       
ggplot(data = propina, aes(x= total, y= propina, shape= sexo )) + geom_point() + theme(aspect.ratio=1)
ggplot(data = propina, aes(x= total, y= propina)) + geom_point(colour= "blue" ) + theme(aspect.ratio=1)
ggplot(data = propina, aes(x= total, y= propina)) + geom_point(size=5, alpha=1/3) + theme(aspect.ratio=1)
ggplot(data = propina, aes(x= total, y= propina, colour= fuma )) + geom_point() + theme(aspect.ratio=1)  
ggplot() + layer(data = propina, mapping =aes(x= total, y= propina), geom = "point", stat="identity", position= "identity")
ggplot(data = propina, aes(x= total, y= propina, colour= fuma )) + geom_point() + theme(aspect.ratio=1) + facet_grid (sexo~fuma)         
ggplot(data = propina, aes(x= total, y= propina, colour= sexo )) + geom_point() + theme(aspect.ratio=1) + scale_x_continuous(name="total de la cuenta") + scale_y_continuous(name="valor de la propina") 
