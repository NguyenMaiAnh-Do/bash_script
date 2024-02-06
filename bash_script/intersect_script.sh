#!/bin/bash
#
#SBATCH --job-name=remove_dup
#SBATCH --output=/home/ndo/slurm_script/bedtools_intersect%j.out
#SBATCH --error=/home/ndo/slurm_script/bedtools_intersect%j.err
#
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4G

bedtools intersect -header -a /home/ndo/bash_output/04_callvariant_vcf/SRR13586007_bcftools.vcf \
-b /home/ndo/GIAB-GT/HG001_GRCh38_1_22_v4.2.1_benchmark.bed \
> /home/ndo/bash_output/05_bedtools_intersect/SRR13586007_intersected.vcf