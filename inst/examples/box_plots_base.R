par(mfrow = c(5, 2), mar=c(1,2,2,1))

for (i in 2:6){
  nm <- names(box_plots)[i]
hist(box_plots[,i], breaks = 100,
     main = nm)
boxplot(box_plots[,i],
        horizontal = TRUE)
}

