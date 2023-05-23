library(ggpubr)
library(ggplot2)
dux_embryo_overlap=read.csv("./zfp_dux_TE_dot.csv")
pdf(file = "zfp_dux_TE_dot.pdf", width = 6, height = 4)
ggplot(dux_embryo_overlap,aes(x=condition,y=TE))+
  geom_point(aes(size=`overlap`,
                 color=`logp`),alpha=1)+
  theme_bw()+
  theme(panel.grid = element_blank(),
        axis.text.x=element_text(angle=90,hjust = 1,vjust=0.5))+
  scale_color_gradient(low="blue",high="red")+
  labs(x=NULL,y=NULL)+grids()+scale_size(name = "number",range=c(0,5.5))
dev.off()