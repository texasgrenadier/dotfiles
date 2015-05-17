
call pathogen#infect()

set number
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

syntax enable
set background=dark
"set background=light
colorscheme solarized

" remap semi-colon to colon
nnoremap ; :

" Settings for NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
