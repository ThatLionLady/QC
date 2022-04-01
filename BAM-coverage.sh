#!/bin/sh

#input files must be in the format sample.descriptor.bam

samples=$(<$1) #path to list of samples
descriptor=$2

dir=$3 #path to directory
outdir=$4 #path to out directory

for sample in $samples; do
samtools depth ${dir}${sample}.${descriptor}.bam | awk '{sum+=$3} END {print sum/NR}' > ${outdir}${sample}.coverageALL
done

#Parse
for sample in $samples; do
ALL="$(cat ${outdir}${sample}.coverageALL)";
echo -e "${sample} \t ALL \t $ALL" >> ${outdir}BAM_coverage.list;
done