#!/bin/bash

#SBATCH --job-name=add_RG
#SBATCH --output=/home/ndo/slurm_script/add_RG_%j.out
#BATCH --error=/home/ndo/slurm_script/add_RG_%j.err


#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=4G

## # SBATCH --partition=nodes


gatk AddOrReplaceReadGroups \
       -I /home/ndo/03_removedup_bam/SRR13586007.bam \
       -O /home/ndo/03_removedup_bam/SRR13586007_RG.bam \
       -RGID 4 \
       --TMP_DIR /gpfs/scratch/ndo \
       -RGLB lib1 \
       -RGPL ILLUMINA \
       -RGPU unit1 \
       -RGSM 20 \
       -use_jdk_deflater true 

