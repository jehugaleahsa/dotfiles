call plug#begin()

Plug 'EdenEast/nightfox.nvim'

call plug#end()

filetype plugin indent on
set autoindent
set encoding=utf-8
set termguicolors

set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

syntax on

set incsearch
set ignorecase
set smartcase
set gdefault

set vb t_vb=
set backspace=2
set nofoldenable
set lazyredraw
set relativenumber
set number
set diffopt+=iwhite
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set colorcolumn=80,120

set background=dark
" colors slate

silent! colorscheme carbonfox

hi Normal guibg=NONE
highlight nonText guibg=NONE

set listchars=nbsp:¬,extends:»,precedes:«,trail:•

