syntax on
set backspace=indent,eol,start
filetype indent plugin on
set hidden
set noerrorbells
set nowrap
set scrolloff=5
set nocp
set encoding=utf-8

"ignore case sens
set ignorecase
set smartcase

"new splits
set splitbelow splitright

"Colors
""set termguicolors
set bg=dark
set t_Co=256
"set cursorline
"set cursorcolumn
"highlight CursorLine ctermbg=darkBlue cterm=bold
"highlight CursorColumn ctermbg=darkGreen cterm=bold

"highlight 81 col.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"set lines number and relnumber
set relativenumber
set number

"Set fuzzy find like
set path+=**

"wildmeny and status line like
set wildmenu
set showcmd
set showmode
set laststatus=2
set ruler

"history size
set history=2600

"powerline
set rtp+=/usr/lib/python3.11/site-packages/powerline/bindings/vim/

"Tabs and indent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab smartindent
set autoindent

"Displeying tabs and trails
exec "set listchars=tab:>-,trail:\uB7"
set list

"search
set nohlsearch
set incsearch

"empty column left from line numbers.
set signcolumn=yes
set spelllang=pl,en_us

" or use :qa!
autocmd FileType netrw setl bufhidden=delete
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

""automatic compliting
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap {<CR> {<CR>}<Esc>O
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i

"netrw settings with comment
"tree style
let g:netrw_liststyle = 3
"Browse in previous window
let g:netrw_browse_split = 4
"to work properly open vim with +Vex
let g:netrw_altv = 0
"Size of netrw window
let g:netrw_winsize = 20
"0 = browing dir = current dir
let g:netrw_keepdir = 0
"Open previu in Vertical
let g:netrw_preview = 1

"Plugins start
call plug#begin()
"plugins
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plugins end
call plug#end()

"LSP
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"    nmap <buffer> gd <plug>(lsp-definition)
"    nmap <buffer> gs <plug>(lsp-document-symbol-search)
"    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"    nmap <buffer> gr <plug>(lsp-references)
"    nmap <buffer> gi <plug>(lsp-implementation)
"    nmap <buffer> gt <plug>(lsp-type-definition)
"    nmap <buffer> <leader>rn <plug>(lsp-rename)
"    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"    nmap <buffer> K <plug>(lsp-hover)
"    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
"    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

" performance
    autocmd! BufWritePre *.rs,*.go,*.pl,*.vim,*.md call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

""LSP log
"let g:lsp_log_verbose = 1
"let g:lsp_log_file = expand('~/tmp/vim-lsp.log')
