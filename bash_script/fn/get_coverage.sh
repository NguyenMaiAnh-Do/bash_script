#!/bin/bash

#SBATCH --job-name=coverage
#SBATCH --output=/home/ndo/slurm_script/coverage_%j.out
#SBATCH --error=/home/ndo/slurm_script/coverage_%j.err


#SBATCH --nodes=1 
#SBATCH --partition=himem



eval "$(conda shell.bash hook)"
eval "$(/home/ndo/miniconda3/bin/conda shell.bash hook)"
conda activate bedtools

bed=/home/ndo/bash_output/fn_bed/fn.bed
bam=/home/ndo/bash_output/05_bedtools_intersect/SRR13586007_bam_intersected.bam

bedtools coverage -d -a $bed -b $bam > /home/ndo/bash_output/coverage/coverage_output.bed