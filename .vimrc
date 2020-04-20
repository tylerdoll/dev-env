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
Plugin 'mattn/emmet-vim'
Plugin 'tomasr/molokai'
Plugin 'othree/yajs.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'drewtempelmeyer/palenight.vim'

" All of your Plugins must be added before the following line
call vundle#end()                                                               " required

filetype plugin indent on                                                       " autoindent
syntax on                                                                       " syntax highlighting
set tabstop=4                                                                   " show existing tab with 4 spaces width
set expandtab                                                                   " Insert spaces instead of a tab char
set shiftwidth=4                                                                " when indenting with use 4 spaces width
set number                                                                      " Show line numbers
set autoindent                                                                  " Enable autoindenting new lines
set mouse=a                                                                     " Enable mouse
set foldenable                                                                  " Enable folding
set foldmethod=indent                                                           " Fold based on line indets
set foldlevel=99
set viminfo='100,<100,s10,h                                                     " 100 marks, 100 lines, 10 kb, disable search highlight
set title                                                                       " Show VIM in terminal title
set backspace=indent,eol,start                                                  " Allow backspacing for everything
set ruler                                                                       " Show cursor location
set incsearch                                                                   " Highlight first match when searching as its typed
autocmd Filetype java setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for java
autocmd Filetype cpp setlocal ts=2 sw=2 sts=2                                   " Indent 2 spaces for cpp
autocmd Filetype html setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for html
autocmd Filetype yml setlocal ts=2 sw=2 sts=2                                   " Indent 2 spaces for yml
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for yaml
autocmd Filetype js setlocal ts=2 sw=2 sts=2                                    " Indent 2 spaces for js
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
map <C-b> :NERDTreeToggle<CR>
map <silent> <C-n> :noh<CR>
nnoremap <space> za                                                             " Trigger case folding on space
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

" Auto open NERDTree when running vim w/o arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
