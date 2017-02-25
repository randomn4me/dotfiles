set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'raimondi/delimitmate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" no backup files 
set noundofile
set nobackup
set noswapfile
set backupdir=${HOME}/.vim/backup

" tab behaviour and indentation
set tabstop=2
set shiftwidth=2
set softtabstop=0
set autoindent
set smartindent
set cindent

" autocommands for different filetypes
autocmd FileType make setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType hs setlocal expandtab
au BufRead /tmp/mutt-* set tw=72


" statusbar settings
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set number

syntax enable

" run :! commands in interactive mode (enables aliases)
set shell=/bin/bash\ -i
