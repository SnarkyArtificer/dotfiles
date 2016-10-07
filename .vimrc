call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'rodjek/vim-puppet', { 'for' : 'puppet' }
Plug 'fatih/vim-go', { 'for' : 'go' }
Plug 'elzr/vim-json', {'for' : 'json'}

Plug 'jpo/vim-railscasts-theme'

call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

:map <C-t> :NERDTreeToggle<CR>

set tabstop=2 shiftwidth=2 expandtab
set number
set autoread

set background=dark
colorscheme railscasts
