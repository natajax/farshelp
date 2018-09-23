library(farshelp)

context("type of output created by make_filename")

test_that("make_filename returns a character vector of length 1", {
  expect_equal(typeof(make_filename(2013)), "character")
  expect_equal(length(make_filename(2013)), 1)
})
