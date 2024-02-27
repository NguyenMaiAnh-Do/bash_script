#!/bin/bash
#
#SBATCH --job-name=coverage
#SBATCH --output=/home/ndo/slurm_script/coverage_%j.out
#SBATCH --error=/home/ndo/slurm_script/coverage_%j.err

#
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=6

bed=/home/ndo/bash_output/fn_bed/fn.bed
bam=/home/ndo/bash_output/03_final_bam/SRR13586007_sortCoord.bam

bedtools coverage -a $bed -b $bam -d > /home/ndo/bash_output/coverage/coverage_output.txt