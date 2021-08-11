"Random shit
set directory^=$HOME/.vim/tmp//
map <C-e> :Explore <CR>
map <F7>  :tabn <CR>
map <F8>  :tabp <CR>
map <C-o> :NERDTreeToggle<CR>
map <C-z> :ALEToggle<CR>
map <C-c> :NERDComComment<CR>
map <C-n> :bNext<CR>
map <C-u> :CarbonNowSh<CR>
map <C-x> :Prettier<CR>
map <C-z> :ZenMode<CR>
map <C-d> :DiffviewOpen<CR>
map <C-c> :CarbonNowSh<CR>
nnoremap <C-f> :All<CR>
nnoremap <leader><tab> :b#<CR>
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|vendo|wp-content|mu-plugins|plugins)|(\.(swp|ico|git|svn))$'
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
command! -bang -nargs=*  All
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*,.git/*}"', 'down': '40%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set textwidth=79
set formatoptions=tcqrn1
set expandtab
set noshiftround

" bufferline
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.icons = v:true
let bufferline.auto_hide = v:false
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.no_name_title = v:null
let bufferline.tabpages = v:true
" NOTE: this is an example taken from the source, implementation of
" s:fg(), s:bg(), s:hi_all() and s:hi_link() is left as an exercise
" for the reader.
" Cursor motion
set scrolloff=3
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

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:carbon_now_sh_options =
\ { 'ln': 'true',
  \ 'fm': 'Fira Code' }


map <leader>q gqip

set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL
"Ale 
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:blamer_delay = 500
let g:ale_fix_on_save = 1
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
filetype plugin on
let g:NERDCreateDefaultMappings = 1
let g:UltiSnipsExpandTrigger="<c-tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:blamer_enabled = 1
" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
call plug#begin()
Plug 'chrisbra/Colorizer'
Plug 'rking/ag.vim'
Plug 'beanworks/vim-phpfmt'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'franbach/miramare'
Plug 'romgrk/doom-one.vim'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'itchyny/lightline.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'altercation/vim-colors-solarized'
Plug 'gko/vim-coloresque'
Plug 'prettier/vim-prettier'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'frazrepo/vim-rainbow'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'tpope/vim-surround'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'tmsvg/pear-tree'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'LeonardSSH/coc-discord-rpc'
Plug 'folke/zen-mode.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'
call plug#end()


set termguicolors 
let ayucolor="dark"
colorscheme ayu


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
augroup ENDb

lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
