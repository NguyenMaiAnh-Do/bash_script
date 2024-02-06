#!/bin/bash
#
#SBATCH --job-name=indexing_ref_fasta
#SBATCH --output=index_ref_fasta%j.out
#SBATCH --error=index_ref_fasta%j.err
#
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4G

datenow=$(date)
echo $datenow
echo ""
srun hostname
echo ""

start=$(date +%s)
echo "start time: $start"
echo ""
echo "hostname: $HOSTNAME"
echo ""


##################







call=$(samtools faidx \
        /home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta)                              
    
echo $call
eval $call
echo ""

echo "finish indexing fasta human reference genome"
    
##################

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
echo "total run time(h): $runtime_h"