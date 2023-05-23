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

pdf(file = "top5_TF_heatmap.pdf", height = 8, width = 10)
ScaleData(sobj, features = tmp, verbose = F) %>%
  DoHeatmap(object = ., features = tmp, size = 3, slot = "scale.data", raster = F) + NoLegend()
dev.off()

pdf(file = "Dux_Zfp352_exp_embryo.pdf", height = 4, width = 10)
VlnPlot(sobj, c("Duxf3", "Gm4981", "Zfp352"))
dev.off()

