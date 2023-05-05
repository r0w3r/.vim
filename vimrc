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
set showmode
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
set spelllang=pl,en_us
set splitbelow

autocmd FileType netrw setl bufhidden=delete 
" or use :qa!
"read file and add to open file
nnoremap ,sh :-1read $HOME/.vim/sh<CR>1j
"read file and add to open file
nnoremap ,perl :-1read $HOME/.vim/perl.pl<CR>6j
"read file and add to open file
nnoremap ,py :-1read $HOME/.vim/python.py<CR>2j
"clean hilight from search
nnoremap 8 :let @/ = ""<CR> 
"CTRL+J nowa linia, lamanie lini.
nnoremap <NL> i<CR><ESC>

"automatic compliting
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

"netrw settings with comment
let g:netrw_liststyle = 3 
"tree style
let g:netrw_browse_split = 4 
"Browse in previous window
let g:netrw_altv = 0 "
let g:netrw_winsize = 20 
"Size of netrw window
let g:netrw_keepdir = 0
"0 = browing dir = current dir
