"""
""" PLUGINS
"""

call plug#begin('~/.local/share/nvim/plugged')

" Spell checker
Plug 'kamykn/spelunker.vim'

" Popup for spell checker
Plug 'kamykn/popup-menu.nvim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

" Vue
Plug 'leafoftree/vim-vue-plugin'

" Completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer' }

" Linting engine
Plug 'w0rp/ale'

" Coffee support
Plug 'kchmck/vim-coffee-script'

" JS support
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" TS support
Plug 'HerringtonDarkholme/yats.vim'

" Pug support
Plug 'digitaltoad/vim-pug'

" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'

" CSS color name highlighter
Plug 'ap/vim-css-color'

" Bufexplorer
Plug 'jlanzarotta/bufexplorer'

" Ultisnips
Plug 'SirVer/ultisnips'

" Vim airline
Plug 'vim-airline/vim-airline'

" Airline themes
Plug 'vim-airline/vim-airline-themes'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" FuzzyFind
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Silver searcher.
Plug 'rking/ag.vim'

" Commentary
Plug 'tpope/vim-commentary'

" Emmet
Plug 'mattn/emmet-vim'

" Surround
Plug 'tpope/vim-surround'

" Vim repeat
Plug 'tpope/vim-repeat'

" Fugitive
Plug 'tpope/vim-fugitive'

" Gitgutter
Plug 'airblade/vim-gitgutter'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

call plug#end()

"""
""" GENERAL
"""
syntax on

set encoding=utf-8
set fileencoding=utf-8

set ttyfast
set lazyredraw

set scrolloff=3
set softtabstop=2
set shiftwidth=2
set expandtab

set listchars=tab:¦\ ,trail:⋅,extends:❯,precedes:❮

set list
set nowrap
set cursorline
set number
set relativenumber

set t_Co=256

set background=light
colorscheme solarized

set history=1000

"""
""" MAPPINGS
"""

" set leader key
let g:mapleader=" "

" copy paths of file
:nmap cp :let @" = expand("%")<CR>
:nmap cn :let @" = expand("%:t")<CR>

" YouCompleteMeMappings
nnoremap <Leader>gt :YcmCompleter GetType<CR>
nnoremap <Leader>dl :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <Leader># :YcmCompleter GoToReferences<CR>

"""
""" PLUGIN CONFIGS
"""

nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFind<CR>
nnoremap <leader>\ :GFiles<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" ycm auto-close the preview window
let g:ycm_autoclose_preview_window_after_completion = 1
" remove <tab>
let g:ycm_key_list_select_completion = []
let g:ycm_semantic_triggers =  {
  \   'css': ['re!^\s{2}', 're!:\s+'],
  \   'scss': ['re!^\s{2}', 're!:\s+'],
  \ }

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"

let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:neosnippet#enable_completed_snippet = 1
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/UltiSnips"]

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_javascript_prettier_use_local_config = 1

" fixer configurations
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'css': ['prettier'],
\}

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

augroup spelunker
  autocmd!
  " Setting for g:spelunker_check_type = 1:
  autocmd BufWinEnter,BufWritePost *.js,*.jsx,*.json,*.md,*.ts,*tsx call spelunker#check()
augroup END
