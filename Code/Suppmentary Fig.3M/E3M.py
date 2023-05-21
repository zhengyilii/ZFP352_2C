computeMatrix reference-point --referencePoint center -R  ZFP352_DUX.bed  ZFP352_only.bed DUX_only.bed  -S ZFP_input_R1.bigWig ZFP_IP_R1.bigWig DUX_input_R1.bigWig DUX_IP_R1.bigWig  -b 1000 -a 1000 --skipZeros --missingDataAsZero -o  ZFP_DUX.gz


plotHeatmap -m  ZFP_DUX.gz --colorMap YlOrRd -out  ZFP_DUX.pdf  --heatmapHeight 15 --heatmapWidth 5