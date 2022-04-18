# Quality Control

Here are scripts for getting quality control statistics for various things.

## Scripts:
- FastQC to MultiQC
- Calculate BAM Coverage

### FastQC to MultiQC

1. format
    - bam, sam, bam_mapped, sam_mapped, fastq, or fastq.gz
2. directory
    - path to directory to files for QC
3. out directory
    - path to out directory for FastQC results 
4. threads

### Calculate BAM Coverage

Input files must be in the format "sample.descriptor.bam".

1. samples
    - path to list of samples
2. descriptor
3. directory
    - path to BAMs directory
4. out directory 
    - path to out directory
