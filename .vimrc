set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'


Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

Bundle 'Valloric/YouCompleteMe'

" Syntax Checking
Plugin 'vim-syntastic/syntastic'

" Syntax Highlighting
Plugin 'nvie/vim-flake8'

" Color Schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" File Browsing
Plugin 'preservim/nerdtree'

" Super Searching (search for basically anything from VIM)
Plugin 'kien/ctrlp.vim'


" Powerline is a status bar that displays things like the current
" virtualenv, git branch, files being edited, and much more
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}


" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


" All of your Plugins must be added before the following line
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set shell=/bin/bash

" Enables syntac colours
colorscheme desert
"colorscheme solarized
syntax on

" Config how backspace works as in would in almost any text editor
set backspace=indent,eol,start

" Enable the cursor coordinates in the right button
set ruler

" Disbled the mouse
set mouse-=a

" Read lines from the top to configure how tabs should behave
set modeline
set modelines=5  " No. of lines to check

" Bind <F3> key to save current file. This also works in "insert mode"
inoremap <F3> <c-o>:w<cr>



"""""" Imported from the web

" python highlight all, releated to the plugin nvie/vim-flake8
let python_highlight_all=1

" Line Numbering
set nu

" UTF-8 Support (Enforced)
set encoding=utf-8

" System Clipboard
set clipboard=unnamed

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


"" Python Config
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix


" Web config
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" Flagging Unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


""" Config scrooloose/nerdtree (File Browsing)
let NERDTreeIgnore=['\.pyc$', '\~$']




