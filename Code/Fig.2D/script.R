#GO analysis#
library(clusterProfiler)
library(org.Mm.eg.db)
df=read.csv("./DuxOE_up.csv",check.names=F)
eg <- bitr(df$gene, 
           fromType="SYMBOL", 
           toType=c("ENTREZID","ENSEMBL",'SYMBOL'),
           OrgDb="org.Mm.eg.db")
# Run GO enrichment analysis 
go <- enrichGO(eg$ENTREZID, 
               OrgDb = org.Mm.eg.db, 
               ont='ALL',
               pAdjustMethod = 'BH',
               pvalueCutoff = 0.05, 
               qvalueCutoff = 0.05 ,
               keyType = 'ENTREZID')
kk=go
kk=DOSE::setReadable(kk, OrgDb='org.Mm.eg.db',keyType='ENTREZID')
tmp=kk@result
write.csv(kk@result,paste0('./DuxOE_up_GO.csv'))

df=read.csv("./Zfp352OE_up.csv",check.names=F)
eg <- bitr(df$gene, 
           fromType="SYMBOL", 
           toType=c("ENTREZID","ENSEMBL",'SYMBOL'),
           OrgDb="org.Mm.eg.db")
# Run GO enrichment analysis 
go <- enrichGO(eg$ENTREZID, 
               OrgDb = org.Mm.eg.db, 
               ont='ALL',
               pAdjustMethod = 'BH',
               pvalueCutoff = 0.05, 
               qvalueCutoff = 0.05 ,
               keyType = 'ENTREZID')
kk=go
kk=DOSE::setReadable(kk, OrgDb='org.Mm.eg.db',keyType='ENTREZID')
tmp=kk@result
write.csv(kk@result,paste0('./Zfp352OE_up_GO.csv'))

#dotplot#
library(ggpubr)
library(ggplot2)
dux_zfp_GO=read.csv("./zfp_dux_GO_term.csv")
pdf(file = "zfp_dux_GO_term.pdf", width = 6, height = 4)
ggplot(dux_zfp_GO,aes(x=SampleGroup,y=Description))+
  geom_point(aes(size=`Count`,
                 color=`logp`),alpha=1)+
  theme_bw()+
  theme(panel.grid = element_blank(),
        axis.text.x=element_text(angle=90,hjust = 1,vjust=0.5))+
  scale_color_gradient(low="red",high="red4")+
  labs(x=NULL,y=NULL)+grids()
dev.off()