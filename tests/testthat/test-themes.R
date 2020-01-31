test_that("theme works", {
  expect_true(ggplot2::is.theme(theme_2036()))
  expect_error(theme_2036(size="14"))
})
