"""""""""""""""""""""""""""""""""""
"
" Install vim-plug
"
"""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""""""""""""""""""""""""""
"
" Setting up plug
"
"""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'

call plug#end()            " required

"""""""""""""""""""""""""""""""""""
"
" Some general config
"
"""""""""""""""""""""""""""""""""""
set encoding=utf-8
set hlsearch
syntax enable           " enable syntax processing
filetype on             " enable filetype checking

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number              " show line numbers

" include jsx in .js files
let g:jsx_ext_required = 0

"""""""""""""""""""""""""""""""""""
"
" Configuring lightline
"
"""""""""""""""""""""""""""""""""""
set laststatus=2
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ }

"""""""""""""""""""""""""""""""""""
"
" Configuring Nerd Tree
"
"""""""""""""""""""""""""""""""""""
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""
"
" Turning on Dracula theme
"
"""""""""""""""""""""""""""""""""""
syntax on
color dracula

