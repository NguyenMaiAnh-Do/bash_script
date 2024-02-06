#!/bin/bash

#SBATCH --job-name=variant_calling_picard_halotypeCaller
#SBATCH --output=/home/ndo/slurm_script/picard_halotypeCaller_%j.out
#SBATCH --error=/home/ndo/slurm_script/picard_halotypeCaller_%j.err


#SBATCH --ntasks=2
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4G

##################

# bam_file="$1"  #intput as a remove dup bam file
# input_dir="/home/ndo/03_removedup_bam"
# output_dir="/home/ndo/04_callvariant_vcf"

# out_name="$(realpath "${output_dir}/${bam_file}")"
# in_name="$(realpath "${input_dir}/${bam_file}")"

# echo "outname"
# realpath "${output_dir}/${bam_file}"
# echo " "
# echo "inname"
# realpath "${input_dir}/${bam_file}"

call=$(/home/ndo/gatk-4.3.0.0/gatk HaplotypeCaller \
   -R /home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta \
   -I /home/ndo/03_final_bam/SRR13586007_sortCoord.bam \
   -O /home/ndo/04_callvariant_vcf/SRR13586007.vcf)

echo $call
eval $call

echo "finish call variant"

echo ""
end=$(date +%s)
echo "end time: $end"
runtime_s=$(echo $(( end - start )))
echo "total run time(s): $runtime_s"
sec_per_min=60
sec_per_hr=3600
runtime_m=$(echo "scale=2; $runtime_s / $sec_per_min;" | bc)
echo "total run time(m): $runtime_m"
runtime_h=$(echo "scale=2; $runtime_s / $sec_per_hr;" | bc)
echo "total run time(h): $runtime_h"s