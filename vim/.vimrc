" ┬─┐┬  ┬ ┐┌─┐o┌┐┐┐─┐
" │─┘│  │ ││ ┬││││└─┐
" ┆  ┆─┘┆─┘┆─┘┆┆└┘──┘

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif

call plug#begin()

Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'preservim/nerdtree'

call plug#end()

" Plugin Setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif


" ┌─┐┌─┐┌┐┐┬─┐o┌─┐
" │  │ ││││├─ ││ ┬
" └─┘┘─┘┆└┘┆  ┆┆─┘

" vim rather than vi
set nocompatible

" /g by default
set gdefault
set encoding=utf-8

set nomodeline

set noerrorbells

set undofile
set undodir=$HOME/.vim/undo
set backupdir=$HOME/.vim/backup
set noswapfile

set clipboard=unnamedplus

set backspace=indent,eol,start

" ┬─┐┬─┐┬ ┬┬─┐┐ ┬o┌─┐┬─┐
" │─│├─ │─┤│─┤│┌┘││ ││┬┘
" ┆─┘┴─┘┆ ┴┘ ┆└┘ ┆┘─┘┆└┘

set wrap
set linebreak
set showbreak=\ \ 

" tab behaviour and indentation
set autoindent
set smartindent
set cindent

set tabstop=4
set shiftwidth=4

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <space> za

nnoremap <C-n> :NERDTree<CR>


" autocommands for different filetypes
autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
autocmd BufNewFile,BufRead *.tex set syntax=tex
autocmd BufNewFile,BufRead *.cls set syntax=tex


" ┬ ┐o
" │ ││
" ┆─┘┆

colorscheme sourcerer

set colorcolumn=+1
set number

syntax enable

" searching
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch

" show unecessary spaces
set list
set listchars=
set listchars+=trail:·
set listchars+=tab:>\ 


