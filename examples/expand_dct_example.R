library(faveDCT)
params = c(323.25, 33.41, 2.33, 3.51, -5.10)

one_d <- expand_dct(params, size = 100)
plot(t(one_d), type = 'l')
