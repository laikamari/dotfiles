################# 
# system config #
#################

alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
setopt completealiases

###########
# aliases #
###########

alias s="ssh t480"
alias l="eza"

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

################
# zsh config #
################


autoload -Uz compinit
compinit

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob notify
bindkey -v

eval "$(starship init zsh)"

# fzf zsh integration
source <(fzf --zsh)
