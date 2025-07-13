##############
# PATH STUFF #
##############

export PATH=$PATH:~/.local/bin

# HOMEBREW
[ -d /opt/homebrew/bin ] && export PATH=/opt/homebrew/bin:$PATH

# GO
# stop putting stuff in ~/go !!!!
export GOPATH=$HOME/.go

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# CARGO
. ~/.cargo/env

################
# bash config #
################

set -o vi                             # vi mode yaay :-)
bind -m vi-insert "\C-l":clear-screen # BUT i need my ^L

# tab completion
bind 'set show-all-if-ambiguous on'
bind "set completion-ignore-case on" # case insensitive

shopt -s histappend # dont overwrite history (?)

eval "$(fzf --bash)"         # ^r replacement
eval "$(starship init bash)" # prompt!

HISTFILE=~/.histfile
HISTSIZE=10000

export EDITOR="hx"

###########
# aliases #
###########

alias please='sudo !!'

alias s="ssh t480"
alias l="eza"
alias la="eza -a"
alias ll="eza -l"

alias e="$EDITOR"

alias ly="lazygit --git-dir $HOME/.local/share/yadm/repo.git --work-tree $HOME"
alias yy="yadm add -u && yadm commit && yadm push"

# pnpm
export PNPM_HOME="/home/mari/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
