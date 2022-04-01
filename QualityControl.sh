#!/bin/sh

format=$1 #bam, sam, bam_mapped, sam_mapped, fastq, or fastq.gz
dir=$2 #path to directory to files for QC
outdir=$3 #path to out directory for FastQC results
threads=$4

fastqc ${dir}*.${format} -t ${threads} -o ${outdir} 
cd ${outdir}
multiqc --export .
