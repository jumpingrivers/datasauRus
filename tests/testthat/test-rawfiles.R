context("Raw files")

test_that("extdata exists", {
  files = list.files(system.file("extdata", package = "datasauRus"))
  expect_equal(length(files), 10)
})
