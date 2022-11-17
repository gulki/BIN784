
install.packages("plotly")
install.packages("ggplot2")
install.packages("dplyr")

library(plotly)
library(dplyr)
library(ggplot2)


evec=read.table("Desktop/bin784_example.evec")
head(evec)

ggplot(data=evec, aes(evec$V2, evec$V3)) +
  geom_point(aes(color=evec$V12)) 
