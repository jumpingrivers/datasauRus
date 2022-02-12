if (require(ggplot2)) {
  ggplot(twelve_from_slant_alternate_long, aes(x = x, y = y, colour = dataset)) +
    geom_point() +
    theme_void() +
    theme(legend.position = "none") +
    facet_wrap(~dataset, ncol = 3)
}

# Base R Plots
state = par("mfrow", "mar")

par(mfrow = c(4, 3), mar = c(2, 2, 2, 2))

sets = sort(unique(twelve_from_slant_alternate_long$dataset))

for (s in sets) {
  df = twelve_from_slant_alternate_long[twelve_from_slant_alternate_long$dataset == s, ]
  plot(df$x, df$y, pch = 16, xlab = "", ylab = "")
  title(s)
}

par(state)
