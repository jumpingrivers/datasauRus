# Contributing to the package

## Code of Conduct
Anyone getting involved in this package agrees to our [Code of Conduct](CONDUCT.md). If someone is breaking the Will Wheaton rule aka Don't be a dick, or breaking the Code of Conduct, please let me know at steph@itsalocke.com

## Bug reports
When you file a [bug report](https://github.com/stephlocke/datasauRus/issues), please spend some time making it easy for us to follow and reproduce. The more time you spend on making the bug report coherent, the more time we can dedicate to investigate the bug as opposed to the bug report.

## Ideas
Got an idea for how we can improve the package? Awesome stuff!

Please [raise it](https://github.com/stephlocke/datasauRus/issues) with some succinct information on expected behaviour of the enhancement and why you think it'll improve the package.

## Package development
We really want people to contribute to the package. A great way to start doing this is to look at the [help wanted](https://github.com/stephlocke/datasauRus/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22) issues and/or contribute an example.

Examples for this package are done in base R or with ggplot2 as an optional example, using the structure:

```r
if(require(ggplot2)){
#ggplot2 code here
}
```

As this is a data package, most of the documentation is sitting in one file (`R/Datasaurus-package.R`) so we keep the examples in a separate directory (`inst/examples`). 

- If there isn't a file for the dataset you want to write an example for, you can make one by just calling it `datasetname.R`. To reference an example file, add the line `@example inst/datasetname.R` in the relevant documentation section of `R/Datasaurus-package.R`.

## Conventions
I'm relatively loose on coding conventions. 

- Datasets are lower-case with underscores between words
- R code should be formatted with the "Reformat code" option in RStudio
- I have no standards for base R plots
- My preferred ggplot2 themes are `theme_minimal` where axes labels matter and `theme_void` when they do not but I'm OK with the default ggplot2 theming
