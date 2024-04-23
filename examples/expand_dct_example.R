library(curvemeans)
params = rbind(
  c(323.25, 33.41, 2.33, 3.51, -5.10),
  c(1171.78, -152.10, -4.91, -14.46, 2.16)
)

one_d <- expand_dct(params[1,], size = 100)
matplot(t(one_d), type = 'l')

two_d <- expand_dct(params, size = 100)
matplot(t(two_d), type = 'l')
