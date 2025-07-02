call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vim-autoformat/vim-autoformat'
Plug 'altercation/vim-colors-solarized'
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
call plug#end()

syntax enable
set background=dark
colorscheme solarized

filetype plugin on

set number
set cursorline

set tabstop=4

au BufWrite * :Autoformat
