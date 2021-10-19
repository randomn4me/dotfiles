" ┌─┐┌─┐┌┐┐┬─┐o┌─┐
" │  │ ││││├─ ││ ┬
" └─┘┘─┘┆└┘┆  ┆┆─┘

" vim rather than vi
set nocompatible

" run :! commands in interactive mode (enables aliases)
set shell=/bin/zsh\ -i

" /g by default
set gdefault

set exrc

set modelines=0
set secure

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

set tw=80

" tab behaviour and indentation
set autoindent
set smartindent
set cindent

set tabstop=4
set shiftwidth=4

" autocommands for different filetypes
autocmd FileType markdown set tw=70
autocmd FileType tex set spell tw=70
autocmd FileType python set tw=100

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


" ┬─┐┬  ┬ ┐┌─┐o┌┐┐┐─┐
" │─┘│  │ ││ ┬││││└─┐
" ┆  ┆─┘┆─┘┆─┘┆┆└┘──┘

execute pathogen#infect()

filetype plugin indent on
