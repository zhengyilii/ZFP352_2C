library(ggpubr)
library(ggplot2)
dux_embryo_overlap=read.csv("./dux_embryo_overlap.csv",header=T,check.names=F)
pdf(file = "dux_embryo_overlap.pdf", width = 6, height = 4)
ggplot(dux_embryo_overlap,aes(x=dux,y=embryo))+
  geom_point(aes(size=`count`,
                 color=`logp`),alpha=1)+
  theme_bw()+
  theme(panel.grid = element_blank(),
        axis.text.x=element_text(angle=90,hjust = 1,vjust=0.5))+
  scale_color_gradient(low="red",high="red4")+
  labs(x=NULL,y=NULL)+grids()
dev.off()