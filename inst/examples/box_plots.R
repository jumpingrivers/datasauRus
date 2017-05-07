summary(box_plots)

if(require(ggplot2)){
  ggplot(box_plots, aes(x=left))+
    geom_density()
  ggplot(box_plots, aes(x=lines))+
    geom_density()
  ggplot(box_plots, aes(x=normal))+
    geom_density()
  ggplot(box_plots, aes(x=right))+
    geom_density()
  ggplot(box_plots, aes(x=split))+
    geom_density()
}
