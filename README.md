# faveDCT


<!-- badges: start -->
<!-- badges: end -->

The goal of curvemeans is to …

## Installation

You can install the development version of faveDCT like so:

``` r
remotes::install_github("Forced-Alignment-and-Vowel-Extraction/faveDCT")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(faveDCT)

dct_params = c(323.25, 33.41, 2.33, 3.51, -5.10)
expanded = expand_dct(dct_params, size = 20)
```

``` r
plot(dct_params)
title("DCT")
```

![](README_files/figure-commonmark/unnamed-chunk-2-1.png)

``` r
plot(expanded)
title("inverse DCT")
```

![](README_files/figure-commonmark/unnamed-chunk-3-1.png)
