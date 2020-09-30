# Customize terminal prompt
export PS1="\[\033[1;34m\]🌱\u🌱\[\033[m\]\[\033[1;34m\]@\h \[\033[0;31m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Shortened SSH tunneling for notebooks 
alias vtun="ssh -L <port>:localhost:<port> valr"

# Aliases for convenience
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -a'

# Slurm convenience alias
alias gjc='srun -c 20 -l -p cpu --mem 30000'
alias gj='srun --gres=gpu:1 -c 8 -l -p gpu --mem 30GB'
alias sinteract='srun --mem=12G -c 8 --gres=gpu:1 -p interactive --pty bash'
alias avail='bash /usr/local/bin/usageStats.sh'
alias sq='squeue -u amyxlu'

# For asynchronous Vim
export PATH=$PATH:/pkgs/neovim/usr/bin
alias vim=nvim

# For vim colors to work in tmux and enable unicode rendering
alias tmux="TERM=screen-256color-bce tmux"
