#!/bin/sh

#input files must be in the format sample.descriptor.bam

SAMPLES=$(<$1) #path to list of samples
DESCRIPTOR=$2

DIR=$3 #path to bam directory
OUT=$4 #path to out directory
BASE=$5 #basename for outfile

# Total Coverage (including positions without any coverage)

for SAMPLE in ${SAMPLES}; do
	samtools depth -aa ${DIR}${SAMPLE}.${DESCRIPTOR}.bam | echo -e "${SAMPLE} \t $(awk '{sum+=$3} END {print sum/NR}')" >> ${OUT}${BASE}.BAM_coverage.list
	echo "${SAMPLE} coverage complete"
done

echo "COVERAGE LIST COMPLETE"

# Coverage at non-zero positions (excluding positions without any coverage)

for SAMPLE in $SAMPLES; do
	samtools depth ${DIR}${SAMPLE}.${DESCRIPTOR}.bam | echo -e "${SAMPLE} \t $(awk '{sum+=$3} END {print sum/NR}')" >> ${OUT}${BASE}.BAM_depth.list
	echo "${SAMPLE} depth complete"
done

echo "DEPTH LIST COMPLETE"