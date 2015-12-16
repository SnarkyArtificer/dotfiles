call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'rodjek/vim-puppet'

Plug 'jpo/vim-railscasts-theme'

call plug#end()

set tabstop=2 shiftwidth=2 expandtab
set number
set autoread

set background=dark
colorscheme railscasts
