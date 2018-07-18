image <- magick::image_read("https://itsalocke.com/img/LockeDataTextNew.svg") %>%
  magick::image_resize("100x100") %>%
  magick::image_convert(type = "grayscale") %>%
  magick::image_contrast(sharpen = 100)

lockedata <- tibble::tibble(x = rep(1:100, 40),
                            y = rep(40:1, each = 100),
                            value = as.vector(image[[1]] == "ff"))
lockedata <- dplyr::filter(lockedata,
                           !value)
library("ggplot2")
ggplot(lockedata, aes(x=x, y=y))+
  geom_point()+
  theme_void()
