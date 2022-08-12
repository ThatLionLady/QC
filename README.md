# Quality Control

Here are scripts for getting quality control statistics for various things.

## Scripts:
- `QualityControl.sh` = FastQC to MultiQC
- `BAM-coverage.sh` = Calculate BAM Coverage

### FastQC to MultiQC

This script takes a list of samples through FastQC to MultiQC.

```sh
bash QualityControl.sh 1 2 3 4
```

1. format
    - bam, sam, bam_mapped, sam_mapped, fastq, or fastq.gz
2. directory
    - path to directory to files for QC
3. out directory
    - path to out directory for FastQC results 
4. threads

### Calculate BAM Depth and Coverage

Via `samtools depth`, this script calculates:
- coverage = the total coverage (including positions without any coverage) 
- depth = coverage at non-zero positions (excluding positions without any coverage)

```sh
bash BAM-Coverage.sh 1 2 3 4
```

Input files must be in the format "sample.descriptor.bam".

1. samples
    - path to list of samples
2. descriptor
3. bam directory
    - path to BAMs directory
4. out directory 
    - path to out directory
5. base
    - basename for output file

Output

- *base*.BAM_coverage.list  
- *base*.BAM_depth.list
