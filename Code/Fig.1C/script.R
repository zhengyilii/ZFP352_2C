library(Seurat)
library(magrittr)
library(data.table)
library(cowplot)

# load data
scobj.aligned <- readRDS("./seurat_aligned_Fu_2020_2018.Rdata")


scobj.aligned@meta.data$InterState = ifelse(
  scobj.aligned@meta.data$integrated_snn_res.1.2 ==1,
  "Entry_Inter",
  ifelse(
    scobj.aligned@meta.data$integrated_snn_res.1.2 ==9,
    "Exit_Inter",
    "Other"
  )
)

p1 = DimPlot(scobj.aligned, group.by = "InterState", combine = F)

geneList = list(
  geneOfInterest = c(
    "Rep.MT2-Mm.LTR.ERVL", "Pou5f1", 
    "Zscan4c", "Sp110", "Usp17lc", 
    "Zfp352", "Tcstv1", "Gm2016"
  )
)


p = FeaturePlot(scobj.aligned, features = geneList[[1]], reduction = "group_umap5", combine = F)

p[[length(p) + 1]] = p1

p2 = lapply(c(p1,p), function(x){
  x + NoAxes()
}) 

pdfWidth = 12
pdfHeight = (length(1)/3) %>% ceiling() %>% {.*4}
pdf("umap_integrated_data.pdf", width = 10, height = 10)
plot_grid(plotlist = p2, ncol = 3) %>% 
  print()
dev.off()