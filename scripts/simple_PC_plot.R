#Read the .evec file
filepc=read.table("/Users/gulsahkilinc/Desktop/bin784_example.evec")
#Check the file
head(filepc)
#Take a subset - we need PC1[col2], PC2[col3] and Population Info[col12]
pc_sub=cbind(filepc[,2:3], filepc[,12])
colnames(pc_sub)=c("PC1","PC2","Pop")

#simple plot
#install.packages("ggplot2")
library(ggplot2)
pc_sub=as.data.frame(pc_sub)

ggplot(pc_sub,aes(x=PC1,y=PC2,col=Pop))+
  geom_point()
