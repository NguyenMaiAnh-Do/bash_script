#!/bin/bash
#
#SBATCH --job-name=create dictionary reference
#SBATCH --output=/home/ndo/slurm_script/dic_ref%j.out
#SBATCH --error=/home/ndo/slurm_script/dic_ref%j.err
#
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4G

in_name="/home/ndo/GIABv3Ref/GRCh38_GIABv3_no_alt_analysis_set_maskedGRC_decoys_MAP2K3_KMT2C_KCNJ18.fasta"
name="${in_name%.*}"
echo name
echo $name
echo ""
out_name=$name.dict


# try the memmory issue
call=$(gatk CreateSequenceDictionary \
      -R $in_name)

echo $call
eval $call

echo "finish creating dictionary file"
