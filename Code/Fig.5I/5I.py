computeMatrix reference-point --referencePoint center -R  MT2_Mm_revised.bed   -S ZFP_input_R1.bigWig ZFP_IP_R1.bigWig ZD_input_R1.bigWig ZD_IP_R1.bigWig  -b 3000 -a 3000 --skipZeros --missingDataAsZero -o  MT2_ZFP_DUX.gz

plotHeatmap -m  MT2_ZFP_DUX.gz --colorMap YlOrRd -out  MT2_ZFP_DUX.pdf  --heatmapHeight 15 --heatmapWidth 5

computeMatrix reference-point --referencePoint center -R  ZFP352_B1.bed   -S ZFP_input_R1.bigWig ZFP_IP_R1.bigWig ZD_input_R1.bigWig ZD_IP_R1.bigWig  -b 3000 -a 3000 --skipZeros --missingDataAsZero -o  ZFPB1_ZFP_DUX.gz

plotHeatmap -m  ZFPB1_ZFP_DUX.gz --colorMap YlOrRd -out  ZFPB1_ZFP_DUX.pdf  --heatmapHeight 15 --heatmapWidth 5