################
# SHELL CONFIG #
################

export PATH=~/.local/bin:$PATH

# Sane defaults
# https://bluz71.github.io/2023/06/02/maximize-productivity-of-the-bash-shell
#  - autocd - change directory without entering the 'cd' command
#  - cdspell - automatically fix directory typos when changing directory
#  - direxpand - automatically expand directory globs when completing
#  - dirspell - automatically fix directory typos when completing
#  - globstar - ** recursive glob
#  - histappend - append to history, don't overwrite
#  - histverify - expand, but don't automatically execute, history expansions
#  - nocaseglob - case-insensitive globbing
#  - no_empty_cmd_completion - do not TAB expand empty lines
shopt -s autocd cdspell direxpand dirspell globstar histappend histverify \
    nocaseglob no_empty_cmd_completion
    
set -o vi                             # vi mode yaay :-)
bind -m vi-insert "\C-l":clear-screen # BUT i need my ^L

eval "$(fzf --bash)"         # ^r replacement
eval "$(starship init bash)" # prompt!

# History
HISTCONTROL=ignoreboth:erasedups # Ignore and erase duplicates
HISTIGNORE=?:??                  # Ignore one and two letter commands
HISTFILESIZE=99999               # Max size of history file
HISTSIZE=99999                   # Amount of history to preserve
HISTFILE=~/.histfile             # Shell agnostic history file

export EDITOR="hx"

alias please="sudo $(fc -ln -1)"

alias l="eza"
alias la="eza -a"
alias ll="eza -l"

alias dc="docker compose"

alias yy="yadm add -u && yadm commit && yadm push"

### Package managers ###

# Homebrew
export HOMEBREW_NO_ENV_HINTS=1
[[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]] && . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"

# Go
export GOPATH=$HOME/.go # stop putting stuff in ~/go !!!!

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Cargo
. ~/.cargo/env
