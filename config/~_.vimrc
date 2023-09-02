set t_Co=256
colorscheme slate

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
nnoremap <C-Left> b
nnoremap <C-Right> e<Right>
nnoremap <Leader>h :tabp<CR>
nnoremap <Leader>l :tabn<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>t :term<CR>
