#' Get the rate of change (first derivative) of DCT
#'
#' This will return the rate of change (first derivative)
#' of a Discrete Cosine Transform. For large \code{size}s,
#' the first-forward-difference of the inverse DCT will
#' approximate the results of this function.
#'
#' @param coefs DCT coefficients
#' @param size length of the result
#'
#' @returns A vector of length \code{size} of the rate of change
#'
#' @example examples/expand_dct_rate_example.R
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
