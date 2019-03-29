" ┌─┐┌─┐┌┐┐┬─┐o┌─┐
" │  │ ││││├─ ││ ┬
" └─┘┘─┘┆└┘┆  ┆┆─┘

" vim rather than vi
set nocompatible

" run :! commands in interactive mode (enables aliases)
set shell=/bin/bash\ -i

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

set nowrap

" tab behaviour and indentation
set autoindent
set smartindent
set cindent

set tabstop=4
set shiftwidth=4

let g:tex_flavor='latex'

" autocommands for different filetypes
autocmd FileType markdown set tw=70
autocmd FileType tex set spell tw=70

autocmd BufRead /tmp/mutt-*  set tw=72

" ┬─┐┬  ┬ ┐┌─┐o┌┐┐┐─┐
" │─┘│  │ ││ ┬││││└─┐
" ┆  ┆─┘┆─┘┆─┘┆┆└┘──┘

execute pathogen#infect()

filetype plugin indent on

" ┬ ┐o
" │ ││
" ┆─┘┆

" statusbar settings
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set number

set colorcolumn=80
set tw=80

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

set filetype=off
set synmaxcol=512

colorscheme sourcerer
