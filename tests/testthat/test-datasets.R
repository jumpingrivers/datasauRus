context("datasets")

datashapetests = function(df, ncols, nrows, uniquecol = NULL, nuniques = NULL) {
  testthat::expect_equal(ncol(df), ncols)
  testthat::expect_equal(nrow(df), nrows)
  if (!is.null(uniquecol)) {
    testthat::expect_equal(nrow(unique(df[uniquecol])), nuniques)
  }
}

test_that("box_plots is correctly shaped", {
  datashapetests(box_plots, 5, 2484)
})

test_that("datasaurus_dozen is correctly shaped", {
  datashapetests(datasaurus_dozen, 3, 1846, "dataset", 13)
})

test_that("datasaurus_dozen_wide is correctly shaped", {
  datashapetests(datasaurus_dozen_wide, 26, 142)
})

test_that("simpsons_paradox is correctly shaped", {
  datashapetests(simpsons_paradox, 3, 444, "dataset", 2)
})

test_that("simpsons_paradox_wide is correctly shaped", {
  datashapetests(simpsons_paradox_wide, 4, 222)
})

test_that("twelve_from_slant_long is correctly shaped", {
  datashapetests(twelve_from_slant_long, 3, 2184, "dataset", 12)
})

test_that("twelve_from_slant_wide is correctly shaped", {
  datashapetests(twelve_from_slant_wide, 24, 182)
})

test_that("twelve_from_slant_alternate_long is correctly shaped", {
  datashapetests(twelve_from_slant_alternate_long, 3, 2184, "dataset", 12)
})

test_that("twelve_from_slant_alternate_wide is correctly shaped", {
  datashapetests(twelve_from_slant_alternate_wide, 24, 182)
})
