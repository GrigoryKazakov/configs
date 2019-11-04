"""
""" general
"""

set encoding=utf-8
set fileencoding=utf-8
set ttyfast
set lazyredraw

"""
""" plugins
"""

call plug#begin('~/.local/share/nvim/plugged')
plug 'altercation/vim-colors-solarized'

plug 'ap/vim-css-color'

plug 'jlanzarotta/bufexplorer'

plug 'neoclide/coc.nvim', {'branch': 'release'}

plug 'sirver/ultisnips'

plug 'vim-airline/vim-airline'
plug 'vim-airline/vim-airline-themes'

plug 'scrooloose/nerdtree', { 'on': 'nerdtreetoggle' }

plug 'jiangmiao/auto-pairs'

plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
plug 'junegunn/fzf.vim'

plug 'rking/ag.vim'

plug 'pangloss/vim-javascript'

plug 'kchmck/vim-coffee-script'

plug 'tpope/vim-commentary'

plug 'mattn/emmet-vim'

plug 'tpope/vim-surround'

plug 'tpope/vim-repeat'

plug 'tpope/vim-fugitive'

plug 'airblade/vim-gitgutter'

plug 'terryma/vim-multiple-cursors'

call plug#end()

"""
""" visual
"""

syntax on
set scrolloff=3
set listchars=trail:·
set softtabstop=2
set shiftwidth=2
set expandtab
set list
set nowrap
set cursorline
set number
set relativenumber

set background=light
colorscheme solarized

"""
""" mappings
"""

let g:mapleader=','

:nmap cp :let @" = expand("%")<cr>
:nmap cn :let @" = expand("%:t")<cr>

"""
""" plugin configs
"""

nnoremap <leader>d :nerdtreetoggle<cr>
nnoremap <c-\> :nerdtreefind<cr>
nnoremap <leader>\ :files<cr>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

let g:ultisnipsexpandtrigger="<tab>"
let g:ultisnipsjumpforwardtrigger="<c-b>"
let g:ultisnipsjumpbackwardtrigger="<c-z>"

let g:neosnippet#enable_completed_snippet = 1
let g:ultisnipssnippetdirectories=[$home."/.vim/ultisnips"]
