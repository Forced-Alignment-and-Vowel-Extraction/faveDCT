#' Expand DCT
#'
#' Given a set of DCT parameters, expand
#' the fitted curve.
#' @param coefs Either a 1d vector of DCT coefficients,
#'        or a \eqn{n\times}\code{coefs} matrix
#' @param size The desired output length of the expansion
#'
#' @returns A \eqn{n\times}\code{size} matrix of the
#'          expanded DCT
#'
#' @example examples/expand_dct_example.R
#' @export

expand_dct <- function(coefs, size = length(coefs)){
  n_basis = length(coefs)
  basis <- dct_basis(n_basis = n_basis, size = size)
  fit <- c(coefs %*% basis)
  return(fit)
}


expand_dct_df <- function(coefs, size = length(coefs)){
  if(is.null(dim(param))){
    n_basis = length(param)
  }else{
    n_basis = dim(param)[2]
  }
  basis <- dct_basis(n_basis = n_basis, size = size)
  fit <- coefs %*% basis
  as.data.frame(t(fit))
}


#' Get the rate of change (first derivative) of DCT
#'
#' This will return the rate of change (first derivative)
#' of a Discrete Cosine Transform. For large \code{size}s,
#' the first-forward-difference of the inverse DCT will
#' approximate the results of this function.
#'
#' @export
expand_dct_rate <- function(coefs, size = length(coefs)){
  hatu = coefs * pi
  idx = (1:length(coefs))-1
  hatu = -idx * hatu
  hatu = hatu[-1]
  hatu = c(hatu, 0)
  dotu = gsignal::idst(hatu, n = size)
  return(dotu)

}
