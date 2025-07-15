call plug#begin()

Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'

call plug#end()

if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:everforest_better_performance = 1
colorscheme everforest

syntax on
set number
set ruler
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch

