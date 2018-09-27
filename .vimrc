"""""" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ervandew/supertab'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'bounceme/highwayman'
Plugin 'gregsexton/MatchTag'
Plugin 'mattn/emmet-vim'
Plugin 'tomasr/molokai'
Plugin 'othree/yajs.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'drewtempelmeyer/palenight.vim'

" All of your Plugins must be added before the following line
call vundle#end()                 " required

filetype plugin indent on                                                       " autoindent
syntax on                                                                       " syntax highlighting
set tabstop=4                                                                   " show existing tab with 4 spaces width
set expandtab                                                                   " Insert spaces instead of a tab char
set shiftwidth=4                                                                " when indenting with use 4 spaces width
set number                                                                      " Show line numbers
set autoindent                                                                  " Enable autoindenting new lines
set mouse=a                                                                     " Enable mouse
set foldenable                                                                  " Enable folding
set viminfo='100,<100,s10,h                                                     " 100 marks, 100 lines, 10 kb, disable search highlight
set title                                                                       " Show VIM in terminal title
set backspace=indent,eol,start                                                  " Allow backspacing for everything
set ruler                                                                       " Show cursor location
set incsearch                                                                   " Highlight first match when searching as its typed
autocmd Filetype java setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for java
autocmd Filetype cpp setlocal ts=2 sw=2 sts=2                                   " Indent 2 spaces for cpp
"set pastetoggle=π                                                              " Toggle paste mode
set backupdir=~/.vim/.backup//                                                  " Set backup location
set directory=~/.vim/.swp//                                                     " Set swap file location
set undofile                                                                    " Store undo history so it will persist when reopening a file
set undodir=~/.vim/.undo//                                                      " Set undo file location
set undolevels=1000                                                             " Max number of changes that can be undone
set undoreload=10000                                                            " Max number of lines saved for undo on a buffer reload


colorscheme palenight 

""""""""""""""""""""""""""""""""
""""""""""""""" Key bindings
""""""""""""""""""""""""""""""""
imap jk <esc> 
imap JK <esc>
map <C-k> :NERDTreeToggle<CR>

""" Disable arrow keys in VIM...IT'S A BAD HABIT
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"""""""""""""""""""""""""""""""""
"""""""""""" PLUGIN CONFIGURATION
"""""""""""""""""""""""""""""""""

let g:jsdoc_allow_input_prompt=1      " Allow prompt for interactive input
let g:jsdoc_input_description=1       " Prompt for a function description
let g:jsdoc_underscore_private=1      " Detect underscore starting functions as private convention
