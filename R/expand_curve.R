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
  if(is.null(dim(coefs))){
    n_basis = length(coefs)
  }else{
    n_basis = dim(coefs)[2]
  }
  basis <- dct_basis(n_basis = n_basis, size = size)
  fit <- coefs %*% basis

  # flatten if 1d
  if(is.null(dim(coefs))){
    fit <- c(fit)
  }
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
