#!/bin/bash
#
#SBATCH --job-name=coordicate_sort
#SBATCH --output=/home/ndo/slurm_script/sorted_coord_bam_%j.out
#SBATCH --error=/home/ndo/slurm_script/sorted_coord_bam_%j.err
#
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4G

/home/ndo/gatk-4.3.0.0/gatk SortSam \
        --INPUT /home/ndo/03_final_bam/SRR13586007.bam \
        --OUTPUT /home/ndo/03_final_bam/SRR13586007_sortCoord.bam \
        --TMP_DIR /home/ndo/tmp-dir \
        --SORT_ORDER coordinate