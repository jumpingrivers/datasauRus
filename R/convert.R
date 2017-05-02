##here is how I converted, we can delete this
# files =  list.files(path = "./inst/extdata",pattern="*.tsv", full.names = TRUE)
#
# purrr::walk(files, function(x){
#   nm <- gsub("(.*/)|(.tsv)|(-)","",x)
#
#   #make it slither
#   nm <-  gsub("^_+", "", tolower(gsub("([A-Z])", "_\\1", nm)))
#
#   if (grepl("wide",nm)){
#   header1 <- scan(x, nlines = 1, what = character())
#   header2 <- scan(x, skip = 1, nlines = 1, what = character())
#   .dat <- read.table(x, skip = 2, header = FALSE)
#   names(.dat) <- paste0(header1,"_", header2)
#   } else {
#     .dat <- read.table(x, header = TRUE)
#   }
#   assign(nm, .dat)
#   save(list = nm, file = paste0("data/",nm,".rda"))
# })
