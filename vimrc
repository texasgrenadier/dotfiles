
call pathogen#infect()
call pathogen#helptags()

set number
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

set laststatus=2

syntax enable
set background=dark
"set background=light
colorscheme solarized

" remap semi-colon to colon
nnoremap ; :

" Settings for NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeWinSize=50

" airline
let g:airline_theme             = 'powerlineish'

