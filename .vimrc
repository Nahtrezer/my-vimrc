" HERE BE DRAGONS!!!

set nocompatible
filetype off
set noswapfile

if has("gui_running")
	set guifont=Droid\ Sans\ Mono\ 10
	set guioptions-=m "remove menubar
	set guioptions-=T "remove toolbar
	colorscheme wombat256
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
Plugin 'klen/python-mode'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'
Plugin 'mitsuhiko/vim-jinja'

call vundle#end()

"------------------Vundle plugins END------------------

filetype plugin indent on
syntax on
colorscheme wombat256

"------------------Global settings for indenting------------------

set tabstop=2
set shiftwidth=2
set noexpandtab
let g:html_indent_inctags = "html,body,head,tbody" 

"------------------Global settings for indenting------------------
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

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
if has("win32")
	let g:virtualenv_directory = 'd:\dev\venvs\'
else
	let g:virtualenv_directory = '~/.virtualenvs/'
endif
