library("magrittr")
# create target dataset
image <- magick::image_read("https://itsalocke.com/img/LockeDataTextNew.svg") %>%
  magick::image_resize("100x100") %>%
  magick::image_convert(type = "grayscale") %>%
  magick::image_contrast(sharpen = 100)

height <- magick::image_info(image)$height
width <- magick::image_info(image)$width
lockedata <- tibble::tibble(x = rep(1:width, height),
                            y = rep(height:1, each = width),
                            value = as.vector(image[[1]] == "ff"))
lockedata <- dplyr::filter(lockedata,
                           !value)


library("datasauRus")
dino <- datasaurus_dozen[datasaurus_dozen$dataset == "dino",]
lockedata$x <- mean(dino$x) - mean(lockedata$x) + lockedata$x
lockedata$y <- mean(dino$y) - mean(lockedata$y) + lockedata$y


library("ggplot2")
new_df <- datasauRus::create_dataset(df = dino,
                       target_df = lockedata,
                       iters = 5000, decimals = 2, shake = 0.2,
                       max_temp = 0.4, min_temp = 0,
                       allowed_dist = 2)
new_df$dataset <- "new"
lockedata$dataset <- "lockedata"
p <- ggplot(dplyr::bind_rows(dplyr::bind_rows(new_df,
             dino),
             lockedata),
       aes(x=x, y=y, col = dataset))+
  geom_point()+
  theme_void()

ggsave(p, file = "p.png")
