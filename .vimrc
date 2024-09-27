call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'sainnhe/everforest'
Plug 'preservim/nerdtree'

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

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
