" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Status bar for nvim
    Plug 'vim-airline/vim-airline'
    " Auto complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Start screen
    Plug 'mhinz/vim-startify'
    " Show color code
    Plug 'norcalli/nvim-colorizer.lua'	 				
    " Battery to the Airline
    Plug 'lambdalisue/battery.vim'
    
    call plug#end()

" Setup
set relativenumber

"keybindings
map <C-n> :NERDTreeToggle<CR>
vnoremap <C-c> "+y
map <C-v> "+P
