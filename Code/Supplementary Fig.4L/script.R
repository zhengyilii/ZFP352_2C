library(Seurat)
library(magrittr)
library(data.table)

# load data
load("./protein_markers.Rdata")
load("./seurat.embryo.Rdata")

stageOrder = c("zy", "early2cell", "mid_late_2cell", "4cell", "8cell", "16cell", "earlyblast", "midblast", "lateblast")
# top five most abundant protein coding genes
tmp = proteinMarkers %>% 
  .[, cls := factor(cls, level = stageOrder)] %>% 
  .[order(cls, fcRank), ] %>% 
  .[fcRank <= 5, gene]

pdf(file = "Dux_Zfp352_exp_embryo.pdf", height = 4, width = 10)
VlnPlot(sobj, c("Rep.B1-Mm.SINE.Alu", "Rep.B1-Mus1.SINE.Alu", "Rep.B1-Mus2.SINE.Alu"))
dev.off()

