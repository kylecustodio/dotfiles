call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'sainnhe/everforest'

call plug#end()

if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:everforest_better_performance = 1
colorscheme everforest
let g:airline_theme = 'everforest'

syntax on
set number
set ruler
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
