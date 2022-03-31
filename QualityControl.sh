#!/bin/sh

format=$1 #bam, sam, bam_mapped, sam_mapped, fastq, or fastq.gz
dir=$2 #path to directory to files for QC (i.e. /home/ubuntu/USS/caitlin/Lions/PALEOMIX/)
outdir=$3 #path to out directory for FastQC results (i.e. /home/ubuntu/USS/caitlin/Lions/FastQC-PALEOMIX/)
threads=$4

fastqc ${dir}*.${format} -t ${threads} -o ${outdir} 
cd ${outdir}
multiqc --export .