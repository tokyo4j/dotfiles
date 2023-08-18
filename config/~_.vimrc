call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tokyo4j/sonokai'
call plug#end()

set t_Co=256
colorscheme sonokai

set nocompatible
syntax enable
set encoding=utf-8
set showcmd
set nowrap
set backspace=indent,eol,start
set number
set mouse=a
set clipboard=unnamedplus
set ve+=onemore

set hlsearch
set incsearch
" set ignorecase
set smartcase

set autoindent
set cindent
set softtabstop=4 shiftwidth=4
set expandtab

if filereadable('cscope.out')
    set cscopetag
    exe 'cs add cscope.out'
endif

if filereadable('/usr/bin/fish')
    set shell=/usr/bin/fish
endif

let mapleader=" "
nnoremap <SPACE> <Nop>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
vnoremap <S-h> ^
vnoremap <S-l> $
vnoremap <C-h> ge
vnoremap <C-l> e
nnoremap <S-h> ^
nnoremap <S-l> $
nnoremap <C-h> ge
nnoremap <C-l> e
nnoremap <Leader>h :tabp<CR>
nnoremap <Leader>l :tabn<CR>
nnoremap <Leader>j :NERDTreeToggle<CR>
nnoremap <Leader>k :TagbarToggle<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>t :term<CR>
