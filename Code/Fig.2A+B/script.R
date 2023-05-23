library(ggpubr)
library(ggthemes)

#Zfp352OE-DEG#
data=read.csv("./Zfp352OE_up.csv",header=T,check.names=F)
data$Group="not-significant"
data$Group[which((data$FDR<0.05)&(data$logFC>0.6))]="up-regulated"
data$Group[which((data$FDR<0.05)&(data$logFC< -0.6))]="down-regulated"
data$label=""
label_gene <- c("Spopfm2","Tdpoz2","Tdpoz4","Tdpoz8","Pramel7","Trim43a","Zfp352","Myc","Bend3")
data$label[match(label_gene,data$gene)] = label_gene
data$Group[match(label_gene,data$gene)] = "label_gene"
pdf(file = "Zfp352OE-DEG.pdf", width = 6, height = 4)
ggscatter(data,x="logCPM",y="logFC",color="Group",label=data$label,palette = c("#2f5688","#64B72F","#BBBBBB","#CC0000"),size=1,font.label = 10,repel = F,xlab = "log2mean expression",ylab = "logFC",)+theme_base()+
  geom_hline(yintercept = c(-0.6,0.6),linetype="dashed")
dev.off()

#DuxOE-DEG#
data=read.csv("./DuxOE_up.csv",header=T,check.names=F)
data$Group="not-significant"
data$Group[which((data$FDR<0.05)&(data$logFC>0.6))]="up-regulated"
data$Group[which((data$FDR<0.05)&(data$logFC< -0.6))]="down-regulated"
data$label=""
label_gene <- c("Zscan4f","Zscan4c","Sp110","Usp17lc","Zfp352","Tdpoz8","Tdpoz4","Zfp809","Spopfm2","Tcstv1","Nelfa","Pramel1")
data$label[match(label_gene,data$gene)] = label_gene
data$Group[match(label_gene,data$gene)] = "label_gene"
pdf(file = "DuxOE-DEG.pdf", width = 6, height = 4)
ggscatter(data,x="logCPM",y="logFC",color="Group",label=data$label,palette = c("#2f5688","#64B72F","#BBBBBB","#CC0000"),size=1,font.label = 10,repel = F,xlab = "log2mean expression",ylab = "logFC",)+theme_base()+
  geom_hline(yintercept = c(-0.6,0.6),linetype="dashed")
dev.off()

#Zfp352OE-DETE#
data=read.csv("./Zfp352OE-DETE.csv",header=T,check.names=F)
data$Group="not-significant"
data$Group[which((data$FDR<0.05)&(data$logFC>0.6))]="up-regulated"
data$Group[which((data$FDR<0.05)&(data$logFC< -0.6))]="down-regulated"
data$label=""
label_TE <- c("Rep.MLT1J2.LTR.ERVL-MaLR","Rep.RLTR26.LTR.ERVK","Rep.MT2_Mm.LTR.ERVL","Rep.MERVL-int.LTR.ERVL","Rep.ORR1A0.LTR.ERVL-MaLR")
data$label[match(label_TE,data$TE)] = label_TE
data$Group[match(label_TE,data$TE)] = "label_TE"
pdf(file = "Zfp352OE-DETE.pdf", width = 6, height = 4)
ggscatter(data,x="logCPM",y="logFC",color="Group",label=data$label,palette = c("#2f5688","#64B72F","#BBBBBB","#CC0000"),size=1,font.label = 10,repel = F,xlab = "log2mean expression",ylab = "logFC",)+theme_base()+
  geom_hline(yintercept = c(-0.6,0.6),linetype="dashed")
dev.off()

#DuxOE-DETE#
data=read.csv("./DuxOE-DETE.csv",header=T,check.names=F)
data$Group="not-significant"
data$Group[which((data$FDR<0.05)&(data$logFC>0.6))]="up-regulated"
data$Group[which((data$FDR<0.05)&(data$logFC< -0.6))]="down-regulated"
data$label=""
label_TE <- c("Rep.ERVL-B4-int.LTR.ERVL","Rep.ERVB4_2-LTR_MM.LTR.ERVK","Rep.MMERVK10C-int.LTR.ERVK","Rep.L1Md_F2.LINE.L1","Rep.MERVL-int.LTR.ERVL","Rep.MT2_Mm.LTR.ERVL")
data$label[match(label_TE,data$TE)] = label_TE
data$Group[match(label_TE,data$TE)] = "label_TE"
pdf(file = "DuxOE-DETE.pdf", width = 6, height = 4)
ggscatter(data,x="logCPM",y="logFC",color="Group",label=data$label,palette = c("#2f5688","#64B72F","#BBBBBB","#CC0000"),size=1,font.label = 10,repel = F,xlab = "log2mean expression",ylab = "logFC",)+theme_base()+
  geom_hline(yintercept = c(-0.6,0.6),linetype="dashed")
dev.off()