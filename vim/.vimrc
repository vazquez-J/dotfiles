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
set autoindent          " use indentation of previous line
set smartindent         " use c like indenting
set expandtab		" tabs are spaces
set ignorecase		" ignore case when searching
set noerrorbells	" disable error bells 
set number              " shows line numbers
set title               " show filename in titlebar

" python stuff
set nocompatible
set smarttab
set backspace=indent,eol,start
syntax on		"enable syntax processing letting vim override custom settings


" Other stuff from videos etc
" remap caps lock to esc


inoremap jk <ESC>
"""""""""""""""""" C/C++ specdific stuff """"""""""""""""""""""""""""""""""""
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

" Set build system
" set makeprg=clang\ -Wall\ -ggdb\
" nnoremap <F4> :make!<cr>
