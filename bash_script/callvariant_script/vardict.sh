#!/bin/bash
#
#SBATCH --job-name=vardict
#SBATCH --output=/home/ndo/slurm_script/vardict_%j.out
#SBATCH --error=/home/ndo/slurm_script/vardict_%j.err

#
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=8G


eval "$(conda shell.bash hook)"
conda activate /home/ndo/miniconda3/envs/notebook

bed=/home/ndo/GIAB-GT/HG001_GRCh38_1_22_v4.2.1_benchmark.bed
ref=/home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta
prior=0.99
bam=/home/ndo/bash_output/03_final_bam/SRR13586007_bam_intersected.bam
ouput=/home/ndo/bash_output/04_callvariant_vcf/intersected_vardict.vcf

AF_THR="0.01" #minimum allele frequency
vardict-java \
    -th 32 \
    -G $ref \
    -f $AF_THR \
    -b $bam \
    -c 1 -S 2 -E 3 -g 4 $bed \
    | teststrandbias.R | var2vcf_valid.pl \
    -E -f $AF_THR > $ouput





