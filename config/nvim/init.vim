call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Status bar for nvim
    Plug 'vim-airline/vim-airline'
    " Start screen
    Plug 'mhinz/vim-startify'
    " Show color code
    Plug 'norcalli/nvim-colorizer.lua'                  
    " lsp & autocomplete
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    " dracula theme
    Plug 'dracula/vim'
call plug#end()

" Setup
set relativenumber
" active number
set nu
" make search act 'normal'
set incsearch
" No sound on error
set noerrorbells
" little menu
set wildmenu
" save it in buffer
set hidden
" search more better 
set nohlsearch
" no wraping 
set nowrap
" search with cases 
set signcolumn=yes
"case search
set smartcase
"tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
" dont scroll to low 
set scrolloff=8
set expandtab
" make a new undodir
set undodir=$HOME/.undo
set undofile

"Enable filetype
filetype plugin on
filetype indent on

" syntax  
syntax on

" keybindings
map <C-n> :NERDTreeToggle<CR>
vnoremap <C-c> "+y
map <C-v> "+P
"helps with permission-denied
"command! W execute 'w !sudo tee % /dev/null' <bar> edit!
"setup lspconfig
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact','substring','fuzzy']

lua << EOF
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
EOF
