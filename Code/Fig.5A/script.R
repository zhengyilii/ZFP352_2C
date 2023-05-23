library(gplots)
library(pheatmap)
df=read.csv("./zfp_mt2 and zfp_B1 mer.csv",header=T,check.names=F)
rownames(df) <- df$mer
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = T,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=6,
         fontsize_col = 10,#行字体的大小
         width =3,
         height=4,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)