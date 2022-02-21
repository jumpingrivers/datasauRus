if (require(ggplot2)) {
  ggplot(simpsons_paradox, aes(x = x, y = y, colour = dataset)) +
    geom_point() +
    theme(legend.position = "none") +
    facet_wrap(~dataset, ncol = 3)
}

# Base R Plots
state = par("mfrow")

par(mfrow = c(1, 2))

sets = unique(datasaurus_dozen$dataset)

for (i in 1:2) {
  df = simpsons_paradox[simpsons_paradox$dataset == paste0("simpson_", i), ]
  plot(df$x, df$y, pch = 16, xlab = "", ylab = "")
  title(paste0("Simpson\'s Paradox ", i))
}

par(state)
