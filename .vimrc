set nocompatible
filetype off    " Required

set rtp+=~/.vim/bundle/vundle/
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
set paste
set number
set colorcolumn=80

set showmode " show the mode we're currently in.
set showcmd   " always display commands.
set showmatch " highlight matching brackets/showbraces
set cursorline " visualize current line.

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'nanotech/jellybeans.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'stephpy/vim-yaml'
Bundle 'rking/ag.vim'
Bundle 'geoffharcourt/vim-matchit'
Bundle 'tpope/vim-sensible'
Bundle 'saltstack/salt-vim.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let ruby_fold = 1
set foldlevelstart=20
filetype plugin on
set omnifunc=syntaxcomplete#Complete

syntax enable
set background=dark
let g:jellybeans_termcolors = 256
colorscheme jellybeans
