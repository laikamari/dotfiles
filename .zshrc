
if [[ "$OSTYPE" =~ ^darwin ]]; then
fi



################
# zsh config #
################

autoload -Uz compinit
compinit

source <(fzf --zsh)
eval "$(starship init zsh)"

# autosuggestions

if [[ "$OSTYPE" =~ ^freebsd ]]; then
		source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [[ "$OSTYPE" =~ ^darwin ]]; then
		source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# fix for iterm (solarized) <3
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=11"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob notify
bindkey -v

export EDITOR="vim"

#################
# system config #
#################

setopt completealiases

###########
# aliases #
###########

alias s="ssh t480"
alias l="eza"
alias la="eza -a"
alias ll="eza -l"

alias ly="lazygit --git-dir $HOME/.local/share/yadm/repo.git --work-tree $HOME"

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
