# Contributing guide

### Code of Conduct
Anyone getting involved in this package agrees to our [Code of Conduct](CONDUCT.md). If someone is breaking the [Will Wheaton rule aka *Don't be a dick*](https://dontbeadickday.com/), or breaking the Code of Conduct, please let me know at steph@itsalocke.com or [keybase.io/stephlocke](https://keybase.io/stephlocke).

### Bug reports
When you file a bug report, please spend some time making it easy for us to follow and reproduce. The more time you spend on making the bug report coherent, the more time we can dedicate to investigate the bug as opposed to the bug report. We recommend using [`reprex`](https://reprex.tidyverse.org/) when providing minimal examples.

If you need a secure way to communicate with the maintainer of this package, message her via [her Keybase account](https://keybase.io/stephlocke).

### Ideas
Got an idea for how we can improve the package? Awesome stuff!

Please [raise it in the issue tracker](issues) with some succinct information on expected behaviour of the enhancement and why you think it'll improve the package.

## Package development
We really want people to contribute to the package. A great way to start doing this is to look at the [help wanted](https://github.com/lockedata/datasauRus/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted+%3Araised_hand%3A%22) issues and/or contribute an example.

Examples for this package are done in base R or with ggplot2 as an optional example, using the structure:

```r
if(require(ggplot2)){
#ggplot2 code here
}
```

As this is a data package, most of the documentation is sitting in one file (`R/Datasaurus-package.R`) so we keep the examples in a separate directory (`inst/examples`). 

- If there isn't a file for the dataset you want to write an example for, you can make one by just calling it `datasetname.R`. To reference an example file, add the line `@example inst/datasetname.R` in the relevant documentation section of `R/Datasaurus-package.R`.

### Conventions
We're relatively loose on coding conventions. 

- Datasets are lower-case with underscores between words
- R code should be formatted with the "Reformat code" option in RStudio
- There are no standards for base R plots
- My preferred ggplot2 themes are `theme_minimal` where axes labels matter and `theme_void` when they do not but I'm OK with the default ggplot2 theming if you want to avoid writing longer ggplot2 code.

New features should be accompanied by new unit tests. We're glad to help with that if you're new to testing!
