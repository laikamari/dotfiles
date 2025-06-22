set nocompatible              " be iMproved, required
filetype off                  " required

" vundle
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	Plugin 'vim-autoformat/vim-autoformat'
	Plugin 'altercation/vim-colors-solarized'

	call vundle#end()
	filetype plugin indent on
"

syntax on
colorscheme solarized

set number
set cursorline

set foldmethod=indent

set tabstop=4
