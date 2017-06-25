" ┌─┐┌─┐┌┐┐┬─┐o┌─┐
" │  │ ││││├─ ││ ┬
" └─┘┘─┘┆└┘┆  ┆┆─┘
"
" run :! commands in interactive mode (enables aliases)
set shell=/bin/bash\ -i

" /g by default
set gdefault

set exrc
set secure

" no backup files 
set directory=$HOME/.vim/swap
set backupdir=$HOME/.vim/backup
set undodir=$HOME/.vim/undo

set clipboard=unnamedplus

" ┬ ┐o
" │ ││
" ┆─┘┆

" statusbar settings
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set number

set colorcolumn=80
set tw=80
highlight ColorColumn ctermbg=darkgray

syntax enable
colorscheme sourcerer


" ┬─┐┬─┐┬ ┬┬─┐┐ ┬o┌─┐┬─┐
" │─│├─ │─┤│─┤│┌┘││ ││┬┘
" ┆─┘┴─┘┆ ┴┘ ┆└┘ ┆┘─┘┆└┘

set nowrap

" tab behaviour and indentation
set autoindent
set smartindent
set cindent

set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4

" autocommands for different filetypes
autocmd FileType make       set noexpandtab
autocmd FileType markdown   set tw=70

autocmd BufRead /tmp/mutt-*  set tw=72
