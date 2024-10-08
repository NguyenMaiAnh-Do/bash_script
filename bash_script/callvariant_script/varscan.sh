#!/bin/bash
#
#SBATCH --job-name=varscan
#SBATCH --output=/home/ndo/slurm_script/varscan_%j.out
#SBATCH --error=/home/ndo/slurm_script/varscan_%j.err

#
#SBATCH --nodes=3
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=6G

eval "$(conda shell.bash hook)"
eval "$(/home/ndo/miniconda3/bin/conda shell.bash hook)"
conda activate /home/ndo/miniconda3/envs/artSeq

bed=/home/ndo/GIAB-GT/HG001_GRCh38_1_22_v4.2.1_benchmark.bed
ref=/home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta
prior=0.99
bam=/home/ndo/bash_output/05_bedtools_intersect/SRR13586007_bam_intersected.bam
# out=/home/ndo/bash_output/04_callvariant_vcf/vsc_1.vcf
#time bcftools mpileup -B -Q5 --max-BQ 30 -I -Ou --threads 28 -T $bed -f $ref $cram | bcftools call -P $prior --threads 28 -mv -Oz -o ~/PAO89685.pass.cram_highconf.vcf


 
#Try with different coverage

# samtools mpileup -f $ref $bam \
# | varscan pileup2snp --min-coverage 2 --min-reads2 1 > /home/ndo/bash_output/04_callvariant_vcf/vsc_mincov3_minread2.vcf

samtools mpileup -f $ref $bam \
| varscan pileup2snp --min-coverage 3 --min-reads2 2 --output-vcf 1 > /home/ndo/bash_output/04_callvariant_vcf/vsc_mc3_rs2.vcf
