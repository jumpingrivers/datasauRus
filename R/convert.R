##here is how I converted, we can delete this
files =  list.files(path = "./inst/extdata",pattern="*.tsv", full.names = TRUE)

purrr::walk(files, function(x){
  nm <- gsub("(.*/)|(.tsv)|(-)","",x)

  #make it slither
  nm <-  gsub("^_+", "", tolower(gsub("([A-Z])", "_\\1", nm)))
  .dat <- read.table(x)
  assign(nm, .dat)
  save(list = nm, file = paste0("data/",nm,".rda"))
})
