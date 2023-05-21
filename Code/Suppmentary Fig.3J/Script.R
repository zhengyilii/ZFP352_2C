df=read.csv("./B1_Zfp352OE_ATAC_logRPKM.csv",header=T,check.names=F)
library(ggpubr)
library(ggplot2)
library(tidyverse)
library(patchwork)
ylim1 <- boxplot.stats(df$logRPKM)$stats[c(1, 5)]
my_comparisons <- list( c("zfpB1_emptyOE","zfpB1_zfpOE") 
# Change color by groups
dp <- ggplot(df, aes(x=type, y=logRPKM, fill=type)) + 
  geom_violin(scale='width',draw_quantiles = c(0.5))+
  labs(x="type", y = "log2(RPKM)")
dp + theme_classic()  + coord_cartesian(ylim = ylim1)+
  stat_compare_means(comparisons = my_comparisons)+ # Add pairwise comparisons p-value
  stat_compare_means(label = "p.signif")