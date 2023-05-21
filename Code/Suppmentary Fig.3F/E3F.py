computeMatrix reference-point --referencePoint center -R  MT2_Mm.bed  ZFP352_only.bed DUX_only.bed  -S ZFP_input_R1.bigWig ZFP_IP_R1.bigWig DUX_input_R1.bigWig DUX_IP_R1.bigWig  -b 1000 -a 1000 --skipZeros --missingDataAsZero -o  ZFP_DUX_MT2.gz

plotHeatmap -m  ZFP_DUX_MT2.gz --colorMap YlOrRd -out  ZFP_DUX_MT2.pdf  --heatmapHeight 15 --heatmapWidth 5