library(ggpubr)
library(magrittr)
library(data.table)

# load data
load("./DEG_result_Dux.Rdata")
load("./DEG_result_Zfp.Rdata")

fcComp = merge(pwResDux, pwResZfp, by = "gene") %>% 
  .[, duxSig := ifelse(FDR.x < 0.01 & abs(logFC.x) > log2(2), "duxDE", "duxNot")] %>% 
  .[, zfpSig := ifelse(FDR.y < 0.01 & abs(logFC.y) > log2(2), "zfpDE", "zfpNot")] %>% 
  .[, duxFold := ifelse(duxSig == "duxDE", ifelse(logFC.x > 0 , "duxUp", "duxDown"), "duxNotSig")] %>% 
  .[, zfpFold := ifelse(zfpSig == "zfpDE", ifelse(logFC.y > 0 , "zfpUp", "zfpDown"), "zfpNotSig")] %>% 
  .[, sigStr := paste0(duxSig, "_", zfpSig)]

pdf(file = "dux_zfp_folder_comparision.pdf", width = 7, height = 6)
ggscatter(fcComp[sigStr != "duxNot_zfpNot", ], "x" = "logFC.x", "y" = "logFC.y", color = "sigStr",size = 1, alpha = 0.5) +
  geom_vline(xintercept = 0, linetype = "dashed") +
  geom_hline(yintercept = 0, linetype = "dashed") +
  coord_cartesian(xlim = c(-12, 12), ylim = c(-12, 12)) +
  labs("x" = "logFC Dux OE", "y" = "logFC Zfp352 OE") +
  theme(legend.position = "right")
dev.off()
