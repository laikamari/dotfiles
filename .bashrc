# blesh setup
[[ $- == *i* ]] && source "$HOME/.local/share/blesh/ble.sh" --noattach

################
# bash config #
################

set -o vi # vi mode yaay :-)
bind -m vi-insert "\C-l":clear-screen # BUT i need my ^L

bind "set completion-ignore-case on" # case insensitive tab completion

shopt -s histappend # dont overwrite history (?)

eval "$(fzf --bash)" # ^r replacement
eval "$(starship init bash)" # prompt!

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

export EDITOR="vim"

#################
# system config #
#################

# setopt completealiases

## POSIX FROM HERE ON ----------------------------------------------------------

###########
# aliases #
###########

alias please='sudo !!'

alias s="ssh t480"
alias l="eza"
alias la="eza -a"
alias ll="eza -l"

alias ly="lazygit --git-dir $HOME/.local/share/yadm/repo.git --work-tree $HOME"
alias yy="yadm add -u && yadm commit && yadm push"

##############
# PATH STUFF #
##############

export PATH=$PATH:~/.local/bin

# GO
# stop putting stuff in ~/go !!!!
export GOPATH=$HOME/.go

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# CARGO
. ~/.cargo/env
source ~/.local/share/blesh/ble.sh

# blesh setup
[[ ! ${BLE_VERSION-} ]] || ble-attach
