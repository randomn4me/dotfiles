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

set undofile
set undodir=$HOME/.vim/undo
set backupdir=$HOME/.vim/backup
set noswapfile

set clipboard=unnamedplus

set backspace=indent,eol,start

" borrowed by xero
" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

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


" ┬─┐┬  ┬ ┐┌─┐o┌┐┐┐─┐
" │─┘│  │ ││ ┬││││└─┐
" ┆  ┆─┘┆─┘┆─┘┆┆└┘──┘
"
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'xero/sourcerer.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
call vundle#end()

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
