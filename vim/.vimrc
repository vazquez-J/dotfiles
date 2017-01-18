""""""""""""""""""""""""""" VUNDLE """"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " Turns off compat with older vi
filetype off                  " required for Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'scrooloose/nerdtree'
" Bundle 'klen/python-mode'
Bundle 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"""""""""""""""""" BASE CONFIG """"""""""""""""""""""""""""""""""""""""

filetype plugin indent on
" For a sidepane
map <F2> :NERDTreeToggle<CR>
" Set indentation
set autoindent
set smartindent


" Ignore case when searching
set ignorecase

" Disable error bells
set noerrorbells

" Shows line numbers
set number

" Show filename in titlebar
set title

" python stuff
set nocompatible
set smarttab
set backspace=indent,eol,start
syntax on


" Other stuff from videos etc
" remap caps lock to esc

