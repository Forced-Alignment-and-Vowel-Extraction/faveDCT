library(curvemeans)
basis <- dct_basis(n_basis = 5, size = 100)
matplot(
  1:100,
  t(basis),
  type = 'l'
)
