" Disable GUI cursor
set guicursor=

" Enable relative line numbers
set relativenumber

" Disable search highlighting
set nohlsearch

" Allow hidden buffers
set hidden

" Disable error bells
set noerrorbells

" Set tab width to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Enable smart indenting
set smartindent

" Show line numbers
set number

" Disable line wrapping
set nowrap

" Disable swap files
set noswapfile

" Disable backups
set nobackup

" Set directory for undo files
set undodir=~/.vim/undodir

" Enable persistent undo
set undofile

" Enable incremental search
set incsearch

" Enable true color support
set termguicolors

" Set minimum lines to keep above and below cursor
set scrolloff=8

" Always show the signcolumn
set signcolumn=yes

" Append '@-@' to the 'isfname' option
set isfname+=@-@

" Set spell checking language
set spelllang=en_us

" Enable spell checking
set spell

" Set command-line height
set cmdheight=1

" Reduce updatetime for faster response
set updatetime=50

" Shorten messages and avoid 'hit enter' prompts
set shortmess+=c

" Set color column at 120 characters
set colorcolumn=120

" Set leader key to space
let mapleader = " "

" ### Remaps ### 
" Explorer and Undotree
nnoremap <leader>ee :Ex<CR>

" Move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Yank to end of line
nnoremap Y yg$

" Keep cursor centered when searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Join lines and keep cursor position
nnoremap J mzJ`z

" Paste over selection without copying it
xnoremap <leader>p "_dp

" Copy to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nmap <leader>Y "+Y

" Delete without copying to register
nnoremap <leader>d "_d
vnoremap <leader>d "_d
