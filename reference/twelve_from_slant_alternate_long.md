# Twelve From Slant Alternate (long) data

A dataset demonstrating the utility of visualization. These 12 datasets
are equal in non-parametric measures: median, interquartile range, and
Spearman's rank correlation.

## Usage

``` r
twelve_from_slant_alternate_long
```

## Format

A data frame with 2184 rows and 3 variables:

- **dataset**: the dataset the data are from

- **x**: x-values

- **y**: y-values

## References

Matejka, J., & Fitzmaurice, G. (2017). Same Stats, Different Graphs:
Generating Datasets with Varied Appearance and Identical Statistics
through Simulated Annealing. *CHI 2017 Conference proceedings: ACM
SIGCHI Conference on Human Factors in Computing Systems.* Retrieved from
<https://www.research.autodesk.com/publications/same-stats-different-graphs/>.
\#nolint

## Examples

``` r
if (require(ggplot2)) {
  ggplot(twelve_from_slant_alternate_long, aes(x = x, y = y, colour = dataset)) +
    geom_point() +
    theme_void() +
    theme(legend.position = "none") +
    facet_wrap(~dataset, ncol = 3)
}


# Base R Plots
state = par("mfrow", "mar")

par(mfrow = c(4, 3), mar = c(2, 2, 2, 2))

sets = sort(unique(twelve_from_slant_alternate_long$dataset))

for (s in sets) {
  df = twelve_from_slant_alternate_long[twelve_from_slant_alternate_long$dataset == s, ]
  plot(df$x, df$y, pch = 16, xlab = "", ylab = "")
  title(s)
}


par(state)
```
