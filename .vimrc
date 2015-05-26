" HERE BE DRAGONS!!!

set nocompatible
filetype off

if has("gui_running")
	set guifont=Lucida\ Console:h10:cRUSSIAN
	set guioptions-=m "remove menubar
	set guioptions-=T "remove toolbar
	colorscheme wombat256mod
endif

set number
set numberwidth=3

" Settings for Vundle

if has("win32")
	set rtp+=~/vimfiles/bundle/Vundle.vim
	let path='~/vimfiles/bundle'
else
	set rtp+=~/.vim/bundle/Vundle.vim
	let path='~/.vim/bundle'
endif

call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

call vundle#end()

" Vundle settings ends here

filetype plugin indent on
syntax on

" Global settings for all files (but may be overridden in ftplugin).
set tabstop=2
set shiftwidth=2
set noexpandtab

" Let's get ride of ARROWS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
