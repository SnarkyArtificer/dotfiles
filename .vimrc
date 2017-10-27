call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'

Plug 'mileszs/ack.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'docunext/closetag.vim'
Plug 'tpope/vim-sleuth'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'jpo/vim-railscasts-theme'
Plug 'altercation/vim-colors-solarized'

call plug#end()

" set tabstop=2 shiftwidth=2 expandtab
set number
set autoread
syntax enable

set background=dark
colorscheme solarized

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'puppet': ['puppet-lint'],
\   'vim': ['vint']
\}

:map <C-n> :NERDTreeToggle<CR>
:map <C-f> :Ack<Space>
:map <C-p> :FZF<CR>

