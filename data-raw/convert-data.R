#here is how I converted, we can delete this
files =  list.files(path = "./inst/extdata",pattern="*.tsv", full.names = TRUE)

purrr::walk(files, function(x){
  nm <- gsub("\\.tsv","",basename(x))
  nm <- gsub("-","_",nm)

  #make it slither
  nm <-  gsub("^_+", "", tolower(gsub("([A-Z])", "_\\1", nm)))

  if (grepl("wide",nm)){
    header1 <- scan(x, nlines = 1, what = character())
    header1 <- paste(header1,c("x","y"),sep="_")
    .dat <- readr::read_tsv(x, col_names = header1, skip = 2)
  } else {
    .dat <- readr::read_tsv(x)
  }
  assign(nm, .dat)
  save(list = nm, file = paste0("data/",nm,".rda"))
})

# remove box_plots rownames
box_plots <- box_plots[,-1]
save(box_plots, file = "data/box_plots.rda")
