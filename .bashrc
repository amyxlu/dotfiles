# customize terminal prompt
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[1;34m\]🌱\u🌱\[\033[m\]\[\033[1;34m\]@\h \[\033[0;31m\]\W\[\033[m\] $(parse_git_branch) $ "
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad


# personal aliases
alias vtun="ssh -L <port>:localhost:<port> valr"

alias ls="ls -GFh"
alias ll="ls -l"
alias la="ls -a"

alias gjc="srun -c 20 -l -p cpu --mem 30000"
alias gj="srun --gres=gpu:1 -c 8 -l -p gpu --mem 30GB"
alias sinteract="srun --mem=12G -c 8 --gres=gpu:1 -p interactive --pty bash"
alias avail="bash /usr/local/bin/usageStats.sh"
alias sq="squeue -u amyxlu"
alias glog="git log --graph --decorate"


# neovim and tmux
export PATH=$PATH:/pkgs/neovim/usr/bin
alias vim=nvim
alias tmux="TERM=screen-256color-bce tmux"
