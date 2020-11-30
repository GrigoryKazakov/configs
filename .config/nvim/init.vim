"""
""" PLUGINS
"""

call plug#begin('~/.local/share/nvim/plugged')

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Typescript support
Plug 'HerringtonDarkholme/yats.vim'

" Coffee support
Plug 'kchmck/vim-coffee-script'

" Javascript support
Plug 'pangloss/vim-javascript'

" jsx support
Plug 'MaxMEllon/vim-jsx-pretty'

" Pug support
Plug 'digitaltoad/vim-pug'

" Solarized colorscheme
Plug 'altercation/vim-colors-solarized'

" CSS color name highlighter
Plug 'ap/vim-css-color'

" Style-components support
Plug 'styled-components/vim-styled-components'

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

set encoding=UTF-8
set fileencoding=UTF-8

set ttyfast
set lazyredraw

set scrolloff=3
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

set list
set nowrap
set cursorline
set number
set relativenumber

set t_Co=256

set background=light
colorscheme solarized

set history=1000
set updatetime=300

set fillchars+=vert:\|
set listchars=tab:¦\ ,trail:⋅,extends:❯,precedes:❮

highlight clear SignColumn
highlight VertSplit ctermbg=NONE ctermfg=NONE

filetype plugin indent on

"""
""" MAPPINGS
"""

" set leader key
let g:mapleader=" "

" copy paths of file
:nmap <Leader>cp :let @" = expand("%")<CR>
:nmap <Leader>cn :let @" = expand("%:t")<CR>

nmap <silent> gl <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Format file
nnoremap <Leader>af :CocCommand prettier.formatFile<CR>

nnoremap <Leader>N :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFind<CR>
nnoremap <leader>\ :Files<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

"""
""" PLUGIN CONFIGS
"""

let g:coc_global_extensions = [
\ 'coc-eslint',
\ 'coc-prettier',
\ 'coc-tsserver',
\ 'coc-css',
\ 'coc-stylelint',
\ 'coc-stylelintplus',
\ 'coc-styled-components',
\ 'coc-spell-checker',
\ 'coc-solargraph'
\ ]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:neosnippet#enable_completed_snippet = 1
let g:UltiSnipsSnippetDirectories=[$HOME."/.config/nvim/UltiSnips"]

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}

if (executable('ag'))
    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

" autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
