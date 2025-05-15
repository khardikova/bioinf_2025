#!/bin/bash
#SBATCH --job-name=fastqc_multiqc
#SBATCH --cpus-per-task=4
#SBATCH --mem=8gb
#SBATCH --time=01:00:00
#SBATCH --output=fastqc_multiqc.%j.log
#SBATCH --partition=short 

mkdir -p fastqc_res
mkdir -p multiqc_res

fastqc *.fastq.gz -o fastqc_res -t 4

multiqc fastqc_res -o multiqc_res
