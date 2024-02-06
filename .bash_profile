# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH="/home/ndo/anaconda3/bin:$PATH"
# export PATH
# . /opt/intel/intelpython3/etc/profile.d/conda.sh

alias gn="ssh ndo@node45"
alias gatk='/home/ndo/gatk-4.3.0.0/gatk'
alias oe='cd /home/ndo/slurm_script/'
alias sq="squeue -u ndo "
. /opt/intel/intelpython3/etc/profile.d/conda.sh
