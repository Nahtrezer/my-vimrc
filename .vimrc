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

"------------------Settings for Vundle------------------

if has("win32")
	set rtp+=~/vimfiles/bundle/Vundle.vim
	let path='~/vimfiles/bundle'
else
	set rtp+=~/.vim/bundle/Vundle.vim
	let path='~/.vim/bundle'
endif

call vundle#begin(path)

"------------------Vundle plugins BEGIN------------------

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
"Plugin 'klen/python-mode'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'

call vundle#end()

"------------------Vundle plugins END------------------

filetype plugin indent on
syntax on

"------------------Global settings for indenting------------------

set tabstop=2
set shiftwidth=2
set noexpandtab

" Let's get ride of ARROWS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"------------------Settings for NERDTree------------------
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
autocmd VimEnter * NERDTree
map <F3> :NERDTreeToggle<CR>


"------------------Settings for vim-venv------------------
let g:virtualenv_directory = 'd:\dev\venvs\'
