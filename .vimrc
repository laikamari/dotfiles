" archived 2025-07-10
call plug#begin()

" ive been told to use this lol
Plug 'tpope/vim-sensible'

" semantics
Plug 'dense-analysis/ale' " linter
Plug 'vim-autoformat/vim-autoformat' " autoformatter

" ui/ux
Plug 'ervandew/supertab' " tab completion
Plug 'junegunn/goyo.vim' " minimal interface toggle

Plug 'altercation/vim-colors-solarized' " colorscheme!

" caddyfile language support ^_^
Plug 'isobit/vim-caddyfile'

call plug#end()

syntax enable
set background=dark

filetype plugin on

set number
set cursorline

set tabstop=4

au BufWrite * :Autoformat
