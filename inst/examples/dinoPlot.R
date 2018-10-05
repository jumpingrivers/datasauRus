library(datasauRus)

head(datasaurus_dozen)
tail(datasaurus_dozen)
dim(datasaurus_dozen)

datasaurus_dozen$dataset <- as.factor(datasaurus_dozen$dataset)
unique(datasaurus_dozen$dataset)

dim(datasaurus_dozen[datasaurus_dozen$dataset=='dino',])

plot(datasaurus_dozen[datasaurus_dozen$dataset=='dino',]$x,datasaurus_dozen[datasaurus_dozen$dataset=='dino',]$y, col = 'red', type = 'b', main = 'Base plot for dino', xlab = 'x', ylab = 'y', cex = 1.5)  
