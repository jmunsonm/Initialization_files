# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
module use /mod/scgc
module load anaconda3



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/scgc/scgc_nfs/opt/common/anaconda3a/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/scgc/scgc_nfs/opt/common/anaconda3a/etc/profile.d/conda.sh" ]; then
        . "/mnt/scgc/scgc_nfs/opt/common/anaconda3a/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/scgc/scgc_nfs/opt/common/anaconda3a/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# aliases
alias jc="qselect -u jmunson-mcgee | wc -l"
alias killjobs="qselect -u jmunson-mcgee | xargs qdel"
alias jobs='qstat -u jmunson-mcgee'
alias g2p='cd /mnt/scgc/simon/microg2p/'

alias interactive='qsub -I -V -q normal -l walltime=8:00:00 -l ncpus=8,mem=8G -N jacob-i'

alias home='cd /home/jmunson-mcgee'
