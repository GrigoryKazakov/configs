"""
""" GENERAL
"""

set encoding=utf-8
set fileencoding=utf-8
set ttyfast
set lazyredraw

"""
""" PLUGINS
"""

call plug#begin('~/.local/share/nvim/plugged')
Plug 'altercation/vim-colors-solarized'

Plug 'ap/vim-css-color'

Plug 'jlanzarotta/bufexplorer'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'SirVer/ultisnips'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'rking/ag.vim'

Plug 'kchmck/vim-coffee-script'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" ts
Plug 'HerringtonDarkholme/yats.vim'

Plug 'tpope/vim-commentary'

Plug 'mattn/emmet-vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'terryma/vim-multiple-cursors'

call plug#end()

"""
""" VISUAL
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
""" MAPPINGS
"""

let g:mapleader=','

:nmap cp :let @" = expand("%")<CR>
:nmap cn :let @" = expand("%:t")<CR>

"""
""" PLUGIN CONFIGS
"""

nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFind<CR>
nnoremap <leader>\ :Files<CR>

nnoremap <leader>f :CocCommand prettier.formatFile<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nnoremap <Leader>[ :bprev<cr>
nnoremap <Leader>] :bnext<cr>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:neosnippet#enable_completed_snippet = 1
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/UltiSnips"]

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
