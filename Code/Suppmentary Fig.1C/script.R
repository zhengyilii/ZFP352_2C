library(gplots)
library(pheatmap)
df=read.csv("./Dux_clu1.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = F,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=10,
         fontsize_col = 10,#行字体的大小
         width =6,
         height=8,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)

df=read.csv("./Dux_clu2.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = F,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=10,
         fontsize_col = 10,#行字体的大小
         width =6,
         height=8,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)

df=read.csv("./Dux_clu3.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = F,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=10,
         fontsize_col = 10,#行字体的大小
         width =6,
         height=8,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)

df=read.csv("./Dux_clu4.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = F,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=10,
         fontsize_col = 10,#行字体的大小
         width =6,
         height=8,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)

df=read.csv("./Dux_clu5.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = F,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=10,
         fontsize_col = 10,#行字体的大小
         width =6,
         height=8,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)

df=read.csv("./Dux_clu6.csv",header=T,check.names=F)
rownames(df) <- df$gene
df <- df[,2:length(colnames(df))]
df <- as.matrix(df)
test <- df[apply(df, 1, function(df) sd(df)!=0),]
pheatmap(test,
         show_rownames = F,
         show_colnames = T,
         cluster_cols = F,
         cluster_rows=T,
         fontsize_row=10,
         fontsize_col = 10,#行字体的大小
         width =6,
         height=8,  #输出图片的高度
         scale = "row",
         angle_col=45, #调整字的角度
         color =colorRampPalette(c("#5EA8E8", "#ffffff","#BF142E"))(100),
         clustering_distance_rows = 'euclidean', 
         clustering_method = 'average'
)