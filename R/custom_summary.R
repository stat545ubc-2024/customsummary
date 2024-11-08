#The custom_summary() function is designed to calculate three summary statistics: mean, median, and standard deviation. It’s flexible enough to handle NA values based on the na.rm argument and provides consistent output as a list and takes a numeric vector as input. The documentation is added in the same code chunk using roxygen2 tags.

#' custom_summary() function
#'
#' Calculates customized summary statistics (mean, median, and standard deviation) for a numeric vector.
#' @param x A numeric vector containing the data for which summary statistics are to be calculated.
#' The name `x` is chosen as it is standard in statistical functions to represent input data.
#' @param na.rm A logical value indicating whether `NA` values should be removed before computation.
#' `na.rm` is used to be consistent with other R functions, like `mean()`, which also use `na.rm` to handle missing values.
#' @param ... Additional arguments to be passed if needed to `mean()`, `median()`, or `sd()`.
#' We use `...` to give flexibility for other parameters like `trim` for `mean()` or other arguments specific to each function which the user would like to use.
#'
#' @return A list containing three elements: `mean`, `median`, and `sd`, which represent the mean, median, and standard deviation of the input vector, respectively.
#' This output format is chosen for consistency, as lists can store multiple summary statistics with named elements.
#' @export
#' @examples
#' # Basic usage with a numeric vector
#' custom_summary(c(1, 2, 3, 4, 5))
#'
#' # Handling NA values by setting na.rm = TRUE
#' custom_summary(c(1, 2, NA, 4, 5), na.rm = TRUE)
#'
#' # Passing additional arguments (e.g., using trim for mean)
#' custom_summary(c(1, 2, 3, 4, 5), na.rm = TRUE, trim = 0.1)

# Defining custom_summary() function
custom_summary <- function(x, na.rm = FALSE, ...) {
  # Check if the input is numeric
  if (!is.numeric(x)) {
    stop("Input must be numeric")
  }

  # Check if the input vector is empty
  if (length(x) == 0) {
    stop("Input vector is empty")
  }

  # Calculate summary statistics
  summary_stats <- list(
    mean = mean(x, na.rm = na.rm, ...),
    median = stats::median(x, na.rm = na.rm),
    sd = stats::sd(x, na.rm = na.rm)
  )

  return(summary_stats)
}

