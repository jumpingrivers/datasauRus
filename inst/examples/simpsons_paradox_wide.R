#save current settings
state = par("mar", "mfrow")

par(mfrow = c(1, 2))

plot(simpsons_paradox_wide[["simpson_1_x"]],
     simpsons_paradox_wide[["simpson_1_y"]],
     xlab = "x", ylab = "y", main = "Simpson's Paradox 1")

plot(simpsons_paradox_wide[["simpson_2_x"]],
     simpsons_paradox_wide[["simpson_2_y"]],
     xlab = "x", ylab = "y", main = "Simpson's Paradox 2")

#reset settings
par(state)
