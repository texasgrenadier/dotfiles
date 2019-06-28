
call pathogen#infect()
call pathogen#helptags()

set number norelativenumber
nmap <C-l> :set relativenumber!<CR>

set hlsearch
set expandtab
set autoindent
set modelines=1
set laststatus=2
set nobackup
set noswapfile

" by default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2

" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

" for python files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

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

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*markdown setlocal filetype=ghmarkdown
augroup END

