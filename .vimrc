call plug#begin('~/.vim/plugged')

" Plug to install
Plug 'damage220/solas.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" Initialize plugin system
call plug#end()

syntax on
set number
colorscheme gruvbox 
set background=dark

" Mappings
let g:mapleader=','
imap jj <Esc>
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

let g:jsx_ext_required = 0 " jsx in .js
set softtabstop=4
set shiftwidth=4
