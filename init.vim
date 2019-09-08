call plug#begin('~/.local/share/nvim/plugged')

" colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'endel/vim-github-colorscheme'
Plug 'ap/vim-css-color'

" Buffers
Plug 'jlanzarotta/bufexplorer'

" Code spell
" Plug 'shinglyu/vim-codespell'


" Preview image (dep - pip install Pillow)
Plug 'ashisha/image.vim'

" Snippets
Plug 'SirVer/ultisnips'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Ag serch
Plug 'rking/ag.vim'

Plug 'easymotion/vim-easymotion'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" for eslint
Plug 'w0rp/ale'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'

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

syntax enable
set number
set relativenumber

" colorscheme solarized
set background=light
colorscheme solarized

" colorscheme github
" let g:airline_theme="atomic"

" adaptive easymotion
hi EasyMotionShade  ctermbg=none ctermfg=blue
hi EasyMotionTarget ctermbg=none ctermfg=darkred
hi EasyMotionTarget2First ctermbg=none ctermfg=darkred
hi EasyMotionTarget2Second ctermbg=none ctermfg=darkred

" colorscheme ayu
" set termguicolors
" let ayucolor="light"
" colorscheme ayu
" let g:airline_theme="ayu_mirage"

" colorscheme one
" colorscheme one
" set background=light
" let g:airline_theme='one'

" Mapping
let g:mapleader=','

" NERDTree
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFind<CR>

nnoremap <leader>\ :Files<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

map <Leader> <Plug>(easymotion-prefix)

:nmap cp :let @" = expand("%")<CR>
:nmap cn :let @" = expand("%:t")<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"let g:ctrlp_custom_ignore = 'node_modules'
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/UltiSnips"]

let g:ale_fixers = ["eslint"]

set scrolloff=3
set listchars=trail:·
set softtabstop=2
set shiftwidth=2
set expandtab
set list
set nowrap
