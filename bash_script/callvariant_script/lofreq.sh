#!/bin/bash
#
#SBATCH --job-name=lofreq
#SBATCH --output=/home/ndo/slurm_script/lofeq_%j.out
#SBATCH --error=/home/ndo/slurm_script/lofreq_%j.err

#
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=6G


# eval "$(conda shell.bash hook)"
# conda activate artSeq

bed=/home/ndo/GIAB-GT/HG001_GRCh38_1_22_v4.2.1_benchmark.bed
ref=/home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta
prior=0.99
bam=/home/ndo/bash_output/03_final_bam/SRR13586007_sortCoord.bam

time lofreq call-parallel --pp-threads 12 --no-default-filter -B -q 3 -Q 3 -a 1 -b 1 -f $ref -l $bed -o /home/ndo/bash_output/04_callvariant_vcf/SRR13586007_lofreq.vcf $bam