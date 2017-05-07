if(require(ggplot2)){
  ggplot(twelve_from_slant_long, aes(x=x, y=y, colour=dataset))+
    geom_point()+
    theme_void()+
    theme(legend.position = "none")+
    facet_wrap(~dataset, ncol=3)
}
