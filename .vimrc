set nocompatible


"Random shit
set directory^=$HOME/.vim/tmp//
map <C-e> :Explore <CR>
map <F7>  :tabn <CR>
map <F8>  :tabp <CR>
map <C-p> :Prettier <CR>
map <C-o> :NERDTreeToggle<CR>
map <C-z> :ALEToggle<CR>
map <C-c> :NERDComComment<CR>
map <C-n> :bNext<CR>
map <C-u> :CarbonNowSh<CR>
nnoremap <leader><tab> :b#<CR>
let g:ctrlp_map = '<c-x>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|vendo|wp-content|mu-plugins|plugins)|(\.(swp|ico|git|svn))$'
let g:ctrlp_cmd = ':NERDTreeClose\|CtrlP'
syntax on
set autoindent
set modelines=0
set number

set ruler
set nostartofline
set visualbell
set t_vb=
set noswapfile

set encoding=utf-8

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set textwidth=79
set formatoptions=tcqrn1
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd
set autochdir
set browsedir=current
" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

let g:carbon_now_sh_options =
\ { 'ln': 'true',
  \ 'fm': 'Fira Code' }


map <leader>q gqip

set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL
"Ale 
let b:ale_fixers = ['prettier', 'eslint', 'phpcbf']
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'php':['phpcbs'],
\}


let g:ale_fix_on_save = 0
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
filetype plugin on
let g:NERDCreateDefaultMappings = 1


call plug#begin()
Plug 'preservim/nerdcommenter'
Plug 'beanworks/vim-phpfmt'
Plug 'Valloric/YouCompleteMe'
Plug 'franbach/miramare'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'frazrepo/vim-rainbow'
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'
Plug 'wakatime/vim-wakatime'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'ajmwagar/vim-deus'
Plug 'google/vim-maktaba'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
call plug#end()

colorscheme miramare

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END
