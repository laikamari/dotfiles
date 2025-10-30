################
# SHELL CONFIG #
################

# bring programs into path
set -gx PATH '~/.local/bin:'"$PATH"

# set up package managers
source ~/.cargo/env.fish
set -gx GOPATH "$HOME"'/.go'
set -gx NVM_DIR "$HOME"'/.nvm'

# starship prompt
source (/usr/local/bin/starship init fish --print-full-init | psub)

set -gx EDITOR hx

alias l='eza'
alias la='eza -a'
alias ll='eza -l'
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias dc='docker compose'
alias yy='yadm add -u && yadm commit && yadm push'
