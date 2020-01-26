
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datasauRus

[![CRAN
version](http://www.r-pkg.org/badges/version/datasauRus)](https://cran.r-project.org/package=datasauRus)
[![Downloads](http://cranlogs.r-pkg.org/badges/datasauRus)](http://cran.rstudio.com/web/packages/datasauRus/index.html)
[![Build
Status](https://travis-ci.org/lockedata/datasauRus.svg?branch=master)](https://travis-ci.org/lockedata/datasauRus)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Locke Data
Slack](https://img.shields.io/badge/Slack-discuss-blue.svg?logo=slack&longCache=true&style=flat)](https://join.slack.com/t/lockedata/shared_invite/enQtMjkwNjY3ODkwMzg2LTI1OGU1NTM3ZGIyZGFiNTdlODI3MzU2N2ZlNDczMjM4M2U2OWVmNDMzZTQ1ZGNlZDQ3MGM2MGVjMjI2MWIyMjI)

This package wraps the awesome Datasaurus Dozen datasets. The Datasaurus
Dozen show us why visualisation is important – summary statistics can be
the same but distributions can be very different. In short, this package
gives a fun alternative to [Anscombe’s
Quartet](https://en.wikipedia.org/wiki/Anscombe%27s_quartet), available
in R as `anscombe`.

The original Datasaurus was created by Alberto Cairo in this great [blog
post](http://www.thefunctionalart.com/2016/08/download-datasaurus-never-trust-summary.html).

The other Dozen were generated using simulated annealing and the process
is described in the paper “Same Stats, Different Graphs: Generating
Datasets with Varied Appearance and Identical Statistics through
Simulated Annealing” by Justin Matejka and George Fitzmaurice ([open
access materials including manuscript and
code](https://www.autodeskresearch.com/publications/samestats),
[official paper](https://doi.org/10.1145/3025453.3025912)).

In the paper, Justin and George simulate a variety of datasets that have the
same summary statistics to the Datasaurus but have very different
distributions.

<img src="https://github.com/stephlocke/lazyCDN/blob/master/DinoSequential.gif?raw=true" alt="sequential dino" width="600"/>

## Install

The latest stable version (0.1.2) is available on CRAN

``` r
install.packages("datasauRus")
```

You can get the latest development version from GitHub, so use
`devtools` to install the package

``` r
devtools::install_github("lockedata/datasauRus")
```

## Usage

You can use the package to produce Anscombe plots and more.

``` r
library(ggplot2)
library(datasauRus)
ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset))+
  geom_point()+
  theme_void()+
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol=3)
```

![](README/README-unnamed-chunk-2-1.png)<!-- -->

## Contributing to the package

Wanna report a bug or suggest a feature? Great stuff\! For more
information on how to contribute check out [our contributing
guide](.github/CONTRIBUTING.md).

Please note that this R package is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this package project
you agree to abide by its terms.
