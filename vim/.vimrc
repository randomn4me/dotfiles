" no backup files 
set directory=$HOME/.vim/swap
set backupdir=$HOME/.vim/backup
set undodir=$HOME/.vim/undo

" tab behaviour and indentation
set autoindent
set smartindent
set cindent

set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4

" autocommands for different filetypes
autocmd FileType make       set noexpandtab tabstop=4 shiftwidth=4
autocmd FileType python     set tabstop=4 shiftwidth=4 softtabstop=4 tw=120
autocmd FileType hs         set expandtab tw=80
autocmd FileType tex        set textwidth=80
autocmd FileType markdown   set textwidth=70

autocmd BufRead /tmp/mutt-*  set tw=72

" statusbar settings
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set number
set clipboard=unnamedplus

set colorcolumn=90
highlight ColorColumn ctermbg=darkgray

syntax enable
colorscheme sourcerer

" run :! commands in interactive mode (enables aliases)
set shell=/bin/bash\ -i

" /g by default
set gdefault

set secure
