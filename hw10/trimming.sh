#!/bin/sh

#SBATCH --job-name=my_trimmomatics        # Job name
#SBATCH --cpus-per-task=8        # Run on a single CPU
#SBATCH --mem=20gb                 # Job memory request
#SBATCH --time=0:30:00           # Time limit hrs:min:sec
#SBATCH --output=trimming_output.log   # Standard output and error log
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<noone>
#SBATCH --constraint=hpc
#SBATCH --partition=short

#qc activate trimming

trimmomatic PE illumina_reads_R1_001.fastq illumina_reads_R1_001.fastq ./illumina_reads_R1_001.paired.fastq.gz ./illumina_reads_R1_001.unpaired.fastq.gz illumina_reads_R2_001.paired.fastq.gz illumina_reads_R2_001.unpaired.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 LEADING:20 TRAILING:20 SLIDINGWINDOW:4:15 MINLEN:36
