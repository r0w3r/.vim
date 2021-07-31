syntax on
set backspace=indent,eol,start
set bg=dark
set relativenumber
set number
filetype indent plugin on
set path+=**
set wildmenu
set history=600
set showcmd
set rtp+=/usr/lib/python3.9/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set nocp
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab smartindent
set autoindent
set nohlsearch
set hidden
set noerrorbells
set nowrap
set incsearch
set scrolloff=5
set signcolumn=yes
set ruler
set spell spelllang=pl,en_us

autocmd FileType netrw setl bufhidden=delete " or use :qa!
nnoremap ,sh :-1read $HOME/.vim/sh<CR>1j
nnoremap ,perl :-1read $HOME/.vim/perl.pl<CR>6j
nnoremap 8 :let @/ = ""<CR>

