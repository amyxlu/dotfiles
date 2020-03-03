# For terminal colors:
export PS1="\[\033[1;34m\]🌱\u🌱\[\033[m\]\[\033[1;34m\]@\h \[\033[0;31m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Shortened SSH tunneling from q to Valrhona for notebooks 
alias tunnel-to-valr="ssh -L 7000:localhost:7000 valr"

# Aliases for convenience
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -a'
alias ssd='cd /scratch/gobi1/amyxlu'
alias hdd='cd /scratch/gobi2/amyxlu'

# Slurm convenience alias
alias gjc='srun -c 20 -l -p cpu --mem 30000'
alias gj='srun --gres=gpu:1 -c 8 -l -p gpu --mem 30GB'
alias sinteract='srun --mem=12G -c 8 --gres=gpu:1 -p interactive --pty bash'
alias slurm-avail='bash /usr/local/bin/usageStats.sh'


### Vector Installations ### 
# For Anaconda
export PATH=$PATH:/pkgs/anaconda3/bin:/pkgs/anaconda3/scripts

# for pip install --user flag
export PATH=$PATH:/h/amyxlu/.local/bin

# For asynchronous Vim
export PATH=$PATH:/pkgs/neovim/usr/bin
alias vim=nvim

# For vim colors to work in tmux and enable unicode rendering
alias tmux="TERM=screen-256color-bce tmux"

# For Tensorflow GPU
export LD_LIBRARY_PATH=/pkgs/cuda-9.0/lib64:$LD_LIBRARY_PATH
export PYTHONPATH=/pkgs/tensorflow-gpu-36:$PYTHONPATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/pkgs/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/pkgs/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/pkgs/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/pkgs/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


### Project datadir or homedir env variables for portability ###
export CPC_PROT_HOME_DIR='/h/amyxlu/CPC_prot/'
export CPC_PROT_DATA_DIR='/scratch/gobi1/amyxlu/ProteinGIMData/'

# Activate my favourite environment
conda activate gim 
