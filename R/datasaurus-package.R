#' Box plot data
#'
#' This dataset is the box plot data produced by Matjeka &
#' Fitzmaurice to demonstrate applicability of their process.
#'
#' @name box_plots
#' @format A data frame with 2484 rows and 5 variables:
#'* **left**: data pulled to the left
#'* **lines**: data with arbitrary spikes along a range
#'* **normal**: normally distributed data
#'* **right**: data pulled to the right
#'* **split**: split data
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/box_plots.R
"box_plots"

#' Box plot data
#'
#' This dataset is the box plot data produced by Matjeka &
#' Fitzmaurice to demonstrate applicability of their process.
#'
#' @name box_plots_long
#' @format A data frame with 12420 rows and 2 variables:
#'* **Plot**: either the left, lines, normal, right or split boxplot
#'* **Values**: the corresponding values from each dataset
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/box_plots.R
"box_plots_long"

#' Datasaurus Dozen (wide) data
#'
#' A dataset demonstrating the utility of visualization.
#' These 12 datasets are equal in standard measures: mean,
#' standard deviation, and Pearson's correlation.
#' @name datasaurus_dozen_wide
#' @format A data frame with 142 rows and 26 variables:
#'* **away_x**: x-values for the `away` dataset
#'* **away_y**: y-values for the `away` dataset
#'* **bullseye_x**: x-values for the `bullseye` dataset
#'* **bullseye_y**: y-values for the `bullseye` dataset
#'* **circle_x**: x-values for the `circle` dataset
#'* **circle_y**: y-values for the `circle` dataset
#'* **dino_x**: x-values for `dinosaur` dataset!
#'* **dino_y**: y-values for `dinosaur` dataset!
#'* **dots_x**: x-values for the `dots` dataset
#'* **dots_y**: y-values for the `dots` dataset
#'* **h_lines_x**: x-values for the `h_lines` dataset
#'* **h_lines_y**: y-values for the `h_lines` dataset
#'* **high_lines_x**: x-values for the `high_lines` dataset
#'* **high_lines_y**: y-values for the `high_lines` dataset
#'* **slant_down_x**: x-values for the `slant_down` dataset
#'* **slant_down_y**: y-values for the `slant_down` dataset
#'* **slant_up_x**: x-values for the `slant_up` dataset
#'* **slant_up_y**: y-values for the `slant_up` dataset
#'* **star_x**: x-values for the `star` dataset
#'* **star_y**: y-values for the `star` dataset
#'* **v_lines_x**: x-values for the `v_lines` dataset
#'* **v_lines_y**: y-values for the `v_lines` dataset
#'* **wide_lines_x**: x-values for the `wide_lines` dataset
#'* **wide_lines_y**: y-values for the `wide_lines` dataset
#'* **x_shape_x**: x-values for the `x_shape` dataset
#'* **x_shape_y**: y-values for the `x_shape` dataset
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/datasaurus_dozen_wide.R
"datasaurus_dozen_wide"

#' Datasaurus Dozen data
#'
#' A dataset demonstrating the utility of visualization.
#' These 12 datasets are equal in standard measures: mean,
#' standard deviation, and Pearson's correlation.
#' @name datasaurus_dozen
#' @format A data frame with 1846 rows and 3 variables:
#'* **dataset**: indicates which dataset the data are from
#'* **x**: x-values
#'* **y**: y-values
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/datasaurus_dozen.R
"datasaurus_dozen"

#' Simpsons Paradox (wide) data
#'
#' A dataset demonstrating Simpson's Paradox with a
#' strongly positively correlated dataset (`simpson_1`)
#' and a dataset with the same positive correlation as `simpson_1`,
#' but where individual groups have a
#' strong negative correlation (`simpson_2`).
#' @name simpsons_paradox_wide
#' @format A data frame with 222 rows and 4 variables:
#'* **simpson_1_x**: x-values from the `simpson_1` dataset
#'* **simpson_1_y**: y-values from the `simpson_1` dataset
#'* **simpson_2_x**: x-values from the `simpson_2` dataset
#'* **simpson_2_y**: y-values from the `simpson_2` dataset
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/).#nolint
#' @example inst/examples/simpsons_paradox_wide.R
"simpsons_paradox_wide"

#' Simpsons Paradox data
#'
#' A dataset demonstrating Simpson's Paradox with a strongly positively
#' correlated dataset (`simpson_1`)
#' and a dataset with the same positive correlation as `simpson_1`,
#' but where individual groups have a
#' strong negative correlation (`simpson_2`).
#' @format A data frame with 444 rows and 3 variables:
#'* **dataset**: indicates which of the two datasets the data are from, `simpson_1` or `simpson_2`
#'* **x**: x-values
#'* **y**: y-values
#' @name simpsons_paradox
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/simpsons_paradox.R
"simpsons_paradox"

#' Twelve From Slant Alternate (long) data
#'
#' A dataset demonstrating the utility of visualization.
#' These 12 datasets are equal in non-parametric measures: median,
#' interquartile range, and Spearman's rank correlation.
#' @name twelve_from_slant_alternate_long
#' @format A data frame with 2184 rows and 3 variables:
#'* **dataset**: the dataset the data are from
#'* **x**: x-values
#'* **y**: y-values
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/twelve_from_slant_alternate_long.R
"twelve_from_slant_alternate_long"

#' Twelve From Slant Alternate (wide) data
#'
#' A dataset demonstrating the utility of visualization.
#' These 12 datasets are equal in non-parametric measures: median,
#' interquartile range, and Spearman's rank correlation.
#' @name twelve_from_slant_alternate_wide
#' @format A data frame with 182 rows and 24 variables:
#'* **bullseye_x**: x-values for the `bullseye` dataset
#'* **bullseye_y**: y-values for the `bullseye` dataset
#'* **circle_x**: x-values for the `circle` dataset
#'* **circle_y**: y-values for the `circle` dataset
#'* **dots_x**: x-values for the `dots` dataset
#'* **dots_y**: y-values for the `dots` dataset
#'* **h_lines_x**: x-values for the `h_lines` dataset
#'* **h_lines_y**: y-values for the `h_lines` dataset
#'* **high_lines_x**: x-values for the `high_lines` dataset
#'* **high_lines_y**: y-values for the `high_lines` dataset
#'* **slant_x**: x-values for the `slant` dataset
#'* **slant_y**: y-values for the `slant` dataset
#'* **slant_down_x**: x-values for the `slant_down` dataset
#'* **slant_down_y**: y-values for the `slant_down` dataset
#'* **slant_up_x**: x-values for the `slant_up` dataset
#'* **slant_up_y**: y-values for the `slant_up` dataset
#'* **star_x**: x-values for the `star` dataset
#'* **star_y**: y-values for the `star` dataset
#'* **v_lines_x**: x-values for the `v_lines` dataset
#'* **v_lines_y**: y-values for the `v_lines` dataset
#'* **wide_lines_x**: x-values for the `wide_lines` dataset
#'* **wide_lines_y**: y-values for the `wide_lines` dataset
#'* **x_shape_x**: x-values for the `x_shape` dataset
#'* **x_shape_y**: y-values for the `x_shape` dataset
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/twelve_from_slant_alternate_wide.R
"twelve_from_slant_alternate_wide"

#' Twelve From Slant (long) data
#'
#' A dataset demonstrating the utility of visualization.
#' These 12 datasets are equal in standard measures: mean,
#' standard deviation, and Pearson's correlation.
#' @name twelve_from_slant_long
#' @format A data frame with 2184 rows and 3 variables:
#'* **dataset**: the dataset the data are from
#'* **x**: x-values
#'* **y**: y-values
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/twelve_from_slant_long.R
"twelve_from_slant_long"

#' Twelve From Slant (wide) data
#'
#' A dataset demonstrating the utility of visualization.
#' These 12 datasets are equal in standard measures: mean,
#' standard deviation, and Pearson's correlation.
#' @name twelve_from_slant_wide
#' @format A data frame with 182 rows and 24 variables:
#'* **bullseye_x**: x-values for the `bullseye` dataset
#'* **bullseye_y**: y-values for the `bullseye` dataset
#'* **circle_x**: x-values for the `circle` dataset
#'* **circle_y**: y-values for the `circle` dataset
#'* **dots_x**: x-values for the `dots` dataset
#'* **dots_y**: y-values for the `dots` dataset
#'* **h_lines_x**: x-values for the `h_lines` dataset
#'* **h_lines_y**: y-values for the `h_lines` dataset
#'* **high_lines_x**: x-values for the `high_lines` dataset
#'* **high_lines_y**: y-values for the `high_lines` dataset
#'* **slant_x**: x-values for the `slant` dataset
#'* **slant_y**: y-values for the `slant` dataset
#'* **slant_down_x**: x-values for the `slant_down` dataset
#'* **slant_down_y**: y-values for the `slant_down` dataset
#'* **slant_up_x**: x-values for the `slant_up` dataset
#'* **slant_up_y**: y-values for the `slant_up` dataset
#'* **star_x**: x-values for the `star` dataset
#'* **star_y**: y-values for the `star` dataset
#'* **v_lines_x**: x-values for the `v_lines` dataset
#'* **v_lines_y**: y-values for the `v_lines` dataset
#'* **wide_lines_x**: x-values for the `wide_lines` dataset
#'* **wide_lines_y**: y-values for the `wide_lines` dataset
#'* **x_shape_x**: x-values for the `x_shape` dataset
#'* **x_shape_y**: y-values for the `x_shape` dataset
#' @references Matejka, J., & Fitzmaurice, G. (2017).
#' Same Stats, Different Graphs: Generating Datasets with
#' Varied Appearance and Identical Statistics through Simulated
#' Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#' Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.research.autodesk.com/publications/same-stats-different-graphs/](https://www.research.autodesk.com/publications/same-stats-different-graphs/). #nolint
#' @example inst/examples/twelve_from_slant_wide.R
"twelve_from_slant_wide"
