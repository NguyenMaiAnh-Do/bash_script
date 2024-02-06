#!/bin/bash
#
#SBATCH --job-name=indexing_bwa
#SBATCH --output=index_bwa_%j.out
#SBATCH --error=indexing_bwa_%j.err
#
#SBATCH --ntasks=1
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


call="bwa" # to get the version
echo "bwa version"
echo $call
eval $call
echo ""



call=$(bwa index /home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta)                                   ### INPUT FASTQs
    
echo $call
eval $call
echo ""

echo ""
    
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