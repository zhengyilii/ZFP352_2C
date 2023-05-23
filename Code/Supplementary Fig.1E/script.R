library(ComplexHeatmap)
library(ggplot2)
df=read.csv("./midlate2C_Dux.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
pdf(file = "midlate2C_Dux.pdf", width = 6, height = 4)
B=Heatmap(df,show_row_names = F,cluster_columns = F,clustering_method_rows = "average",height=10,width=3,col = colorRampPalette(c("#4EA8DE","#FFFFFF","#D43F45"))(100))
genes <- c("Zfp352")
genes <- as.data.frame(genes)
B + rowAnnotation(link = anno_mark(at = which(rownames(df) %in% genes$genes), 
                                   labels = genes$genes, labels_gp = gpar(fontsize = 10)))
dev.off()