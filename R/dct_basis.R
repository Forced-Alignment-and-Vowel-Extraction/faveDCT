#' DCT Basis
#'
#' This will generate a DCT basis equivalent to
#' scipy.fft.dct
#'
#' The following python code will generate an equivalent
#' DCT basis.
#'
#' \preformatted{
#' # python
#' from scipy.fft import dct
#' import numpy as np
#' size = 100
#' n_basis = 5
#' dct(
#'   np.eye(size),
#'   orthogonalize = True,
#'   norm = "backward"
#'  )[:,:n_basis]
#' }
#'
#' @param n_basis The number of basis functions to return
#' @param size The length of the basis functions
#'

#'
#' @returns A \code{n_basis}\eqn{\times}\code{size} matrix
#' containing the DCT basis
#'
#' @example examples/dct_basis_example.R
#'
#' @importFrom gsignal dctmtx
#' @export
dct_basis <- function(n_basis = 5, size = 100){
  mat <- dctmtx(size)
  mat[1,] <- mat[1,] / sqrt(1/size)
  mat[2:size,] <- mat[2:size,]/(sqrt(2/size))
  mat <- mat*2
  mat[1,] <- mat[1, ]/sqrt(2)
  return(mat[1:n_basis,])
}

