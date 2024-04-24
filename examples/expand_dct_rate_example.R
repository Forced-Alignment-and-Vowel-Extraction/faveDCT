library(faveDCT)
params = c(323.25, 33.41, 2.33, 3.51, -5.10)

# the DCT expansion
expanded = expand_dct(params, size = 1000)

# the first forward difference
ffd = diff(expanded)

# the rate of change
rate = expand_dct_rate(params, size = 1000)

plot(rate, lwd = 5, type = 'l')
lines(ffd, col = "red", lwd = 2)
legend(
  x = 0,
  y = -0.25,
  legend = c("rate", "ffd"),
  col = c("black", "red"),
  lty = 1
)
