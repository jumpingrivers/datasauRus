#save current settings
state <- par("mar", "mfrow")

# plot
par(mfrow = c(5, 3), mar=c(1,3,3,1))

nms <- names(datasaurus_dozen_wide)
for (i in seq(1, 25, by = 2)){
  nm <- substr(nms[i], 1, nchar(nms[i]) - 2)
  plot(datasaurus_dozen_wide[[nms[i]]],
       datasaurus_dozen_wide[[nms[i+1]]],
       xlab = "", ylab = "", main = nm)
}

#reset settings
par(state)
