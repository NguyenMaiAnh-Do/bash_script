# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature
:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#source /act/etc/profile.d/actbin.sh
# module purge all
# module load sratoolkit
# module load fastqc
# module load bwa
# module load samtools
# module load hisat2-2.1.0
# module load intel-python3
# module load vcftools-0.1.13
# module load picard
# module load bedops-2.4.39
module purge all
# source /act/etc/profile.d/actbin.sh
# source ble.sh/out/ble.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(/home/ndo/miniconda3/bin/conda shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ndo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ndo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ndo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<





############ MY SET UP

# # .bashrc

# # Source global definitions
# if [ -f /etc/bashrc ]; then
# 	. /etc/bashrc
# fi

# # Uncomment the following line if you don't like systemctl's auto-paging feature:
# # export SYSTEMD_PAGER=

# # User specific aliases and functions
# source /act/etc/profile.d/actbin.sh
# source ble.sh/out/ble.sh

# # alias gn="ssh -L 1234:localhost:1234 ndo@node17"

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/intel/intelpython3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/intel/intelpython3/etc/profile.d/conda.sh" ]; then
#         . "/opt/intel/intelpython3/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/intel/intelpython3/bin:$PATH"
#     fi
# fi
# # unset __conda_setup
# # <<< conda initialize <<<
# # eval "$(/home/ndo/anaconda3/bin/conda shell.bash hook)" 
# # export PATH="/home/ndo/anaconda3/bin:$PATH"  # commented out by conda initialize

# export PATH="/home/ndo/bwa-0.7.17:$PATH"
# export PATH="/home/ndo/gatk-4.3.0.0:$PATH"
# export PATH="/home/ndo/sratoolkit.3.0.10-ubuntu64/bin:$PATH"
# # Instruction to install samtools 1.18 https://www.htslib.org/download/
# export PATH="/home/ndo/apps/samtools/bin:$PATH"
# export PATH="/home/ndo/bcftools-1.19:$PATH"
# # export PATH="/home/ndo/apps/lofreq_star-2.1.4_linux-x86-64/bin/:$PATH"