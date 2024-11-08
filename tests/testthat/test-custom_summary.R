# Test suite for custom_summary function
test_that("custom_summary function works as expected", {
  # Test 1: Vector with no NAs
  result <- custom_summary(c(1, 2, 3, 4, 5))
  expect_equal(result$mean, mean(c(1, 2, 3, 4, 5)))
  expect_equal(result$median, median(c(1, 2, 3, 4, 5)))
  expect_equal(result$sd, sd(c(1, 2, 3, 4, 5))) # standard deviation calculation

  # Test 2: Vector with NAs
  result_with_na <- custom_summary(c(1, 2, NA, 4, 5), na.rm = TRUE)
  expect_equal(result_with_na$mean, mean(c(1, 2, 4, 5)))
  expect_equal(result_with_na$median, median(c(1, 2, 4, 5)))
  expect_equal(result_with_na$sd, sd(c(1, 2, 4, 5)))

  # Test 3: Vector of a different type (non-numeric)
  expect_error(custom_summary(c("a", "b", "c")), "Input must be numeric")

  # Test 4: Empty numeric vector
  expect_error(custom_summary(numeric(0)), "Input vector is empty")

  # Test 5: Vector with only NAs
  expect_error(custom_summary(c(NA, NA, NA), na.rm = FALSE), "Input must be numeric")
})
