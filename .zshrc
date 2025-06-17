################
# zsh config #
################

autoload -Uz compinit
compinit

source <(fzf --zsh)
eval "$(starship init zsh)"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob notify
bindkey -v

export EDITOR="nvim"

################# 
# system config #
#################

alias df='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
setopt completealiases

###########
# aliases #
###########

alias s="ssh t480"
alias l="eza"
alias la="eza -a"
alias ll="eza -l"
alias vim="nvim"

##############
# PATH STUFF #
##############

export PATH=$PATH:~/.local/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# CARGO
. ~/.cargo/env
