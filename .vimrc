set nocompatible              " be iMproved, required

" VUNDEL "
filetype off                  " required for Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
"
Plugin 'wakatime/vim-wakatime'
Bundle 'scrooloose/nerdtree'
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

