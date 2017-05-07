if(require(ggplot2)){
  ggplot(simpsons_paradox, aes(x=x, y=y, colour=dataset))+
    geom_point()+
    theme(legend.position = "none")+
    facet_wrap(~dataset, ncol=3)
}
