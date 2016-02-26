" HERE BE DRAGONS!!!

set nocompatible
filetype off
set noswapfile
set mouse=a
set clipboard=unnamed
let mapleader=","

if has("gui_running")
	set guifont=Droid\ Sans\ Mono\ 10
	set guioptions-=m "remove menubar
	set guioptions-=T "remove toolbar
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'klen/python-mode'
" Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
" Plugin 'wookiehangover/jshint.vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'sickill/vim-monokai'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/MatchTagAlways'
Plugin 'jiangmiao/auto-pairs'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()

"------------------Vundle plugins END------------------
"------------------Vundle settings ends----------------

filetype plugin indent on
syntax on
colorscheme monokai

"------------------Global settings for indenting------------------

set tabstop=2
set shiftwidth=2
set expandtab
let g:html_indent_inctags = "html,body,head,tbody" 

"------------------Global settings for indenting------------------
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" Let's get ride of ARROWS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Search of visualy selected text
vnoremap // y/<C-R>"<CR>

"Easy switch between buffers
noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR> 

noremap <C-k> <C-w><Up>
noremap <C-j> <C-w><Down>
noremap <C-l> <C-w><Right>
noremap <C-h> <C-w><Left>

"------------------Settings for NERDTree------------------
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
" autocmd VimEnter * NERDTree
map <F3> :NERDTreeToggle<CR>


"------------------Settings for vim-venv------------------
if has("win32")
	let g:virtualenv_directory = 'd:\dev\venvs\'
else
	let g:virtualenv_directory = '~/.virtualenvs/'
endif

"------------------Settings for Pymode------------------
let g:pymode_python = 'python3' "set python version
let g:pymode_lint_on_write = 1 "не проверять при каждом сохранении
let g:pymode_folding = 0 "мне не нужен авто-фолдинг
let g:pymode_rope_completion = 0 "не использовать автодополнение rope
let g:pymode_virtualenv = 1 "turn off virtualenvautodetect
let g:pymode_rope = 0

"------------------Settings for Jedi------------------
autocmd FileType python setlocal completeopt-=preview "no autodocumentation popup

"setting for files
" autocmd FileType javascript setlocal expandtab shiftwidth=4 softtabstop=4
" autocmd FileType html setlocal expandtab shiftwidth=4 softtabstop=4
