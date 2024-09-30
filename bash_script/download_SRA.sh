#!/bin/bash
#SBATCH --job-name=download_SRA
#SBATCH --output=/home/ndo/slurm_script/download_SRA%j.out
#SBATCH --error=/home/ndo/slurm_script/download_SRA%j.err

#SBATCH --ntasks=3
#SBATCH --cpus-per-task=28
#SBATCH --mem-per-cpu=4G

# Function to download and extract SRA files

download_and_extract_sra() {
    accession=$1

    # Use prefetch to download the data associated with the accession
    prefetch "$accession" --output-directory /home/ndo/bash_output/sra_files

    # Use fastq-dump to extract FASTQ files from the downloaded data

    variable="$accession"
    variable+=".sra"
    cd "/home/ndo/bash_output/sra_files/$accession/"
    echo $PWD
    echo $variable
    fastq-dump "$variable" -O /home/ndo/bash_output/00_raw_fastq/
}


download_and_extract_sra "SRR13586106"
# download_and_extract_sra "SRR13586112" # if above don't work


# download_and_extract_sra "SRR13586011"
# download_and_extract_sra "SRR13586012"
# download_and_extract_sra "SRR13586013"
# download_and_extract_sra "SRR13586014"
# download_and_extract_sra "SRR13586015"
# download_and_extract_sra "SRR13586016"
# download_and_extract_sra "SRR13586018"
# download_and_extract_sra "SRR13586019"
# download_and_extract_sra "SRR13586020"
# download_and_extract_sra "SRR13586112"