
<!-- README.md is generated from README.Rmd. Please edit that file -->

# customsummary

<!-- badges: start -->
<!-- badges: end -->

The customsummary package provides a function, custom_summary(),
designed to calculate customized summary statistics (mean, median, and
standard deviation) for a numeric vector. It’s flexible in handling
missing values and allows for additional arguments to be passed to
functions where applicable, such as trim in the mean() function.

## Installation

You can install the development version of customsummary from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2024/customsummary")
```

## Usage

To get started with customsummary, load the library and use
custom_summary() on a numeric vector to obtain the mean, median, and
standard deviation.

``` r
library(customsummary)

# Example 1: Basic usage with a numeric vector
result <- custom_summary(c(1, 2, 3, 4, 5))
print(result)
#> $mean
#> [1] 3
#> 
#> $median
#> [1] 3
#> 
#> $sd
#> [1] 1.581139

# Example 2: Handling NA values by setting na.rm = TRUE
result_with_na <- custom_summary(c(1, 2, NA, 4, 5), na.rm = TRUE)
print(result_with_na)
#> $mean
#> [1] 3
#> 
#> $median
#> [1] 3
#> 
#> $sd
#> [1] 1.825742

# Example 3: Passing additional arguments (e.g., using trim for mean)
result_with_trim <- custom_summary(c(1, 2, 3, 4, 5), na.rm = TRUE, trim = 0.1)
print(result_with_trim)
#> $mean
#> [1] 3
#> 
#> $median
#> [1] 3
#> 
#> $sd
#> [1] 1.581139
```
