call plug#begin('~/.local/share/nvim/plugged')

" Colors
" Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'

" Buffers
Plug 'jlanzarotta/bufexplorer'

" Snippets
Plug 'SirVer/ultisnips'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" for eslint
Plug 'w0rp/ale'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'

" coffee
Plug 'kchmck/vim-coffee-script'

" Commenst
Plug 'tpope/vim-commentary'

" Scss
Plug 'tpope/vim-haml'

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

syntax on
set number
" set background=dark
" colorscheme onedark

set termguicolors
let ayucolor="mirage"
colorscheme ayu
let g:airline_theme="ayu_mirage"

" Mapping
let g:mapleader=','
imap jj <Esc>

" NERDTree
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFind<CR>

nnoremap <leader>ff :Files<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

map <Leader> <Plug>(easymotion-prefix)

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"let g:ctrlp_custom_ignore = 'node_modules'
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1

let g:ale_fixers = ['eslint']

set softtabstop=2
set shiftwidth=2
set expandtab
set list
set nowrap
