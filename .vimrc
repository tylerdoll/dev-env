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
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'dense-analysis/ale'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()                                                               " required

""""""""""""""""""""""""""""""""
""""""""""""""" Settings
""""""""""""""""""""""""""""""""

"""""" Syntax formatting
filetype plugin indent on                                                       " autoindent
syntax on                                                                       " syntax highlighting
set tabstop=4                                                                   " show existing tab with 4 spaces width
set expandtab                                                                   " Insert spaces instead of a tab char
set shiftwidth=4                                                                " when indenting with use 4 spaces width
set autoindent                                                                  " Enable autoindenting new lines
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2                            " Indent 2 spaces for javascript
autocmd Filetype java setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for java
autocmd Filetype cpp setlocal ts=2 sw=2 sts=2                                   " Indent 2 spaces for cpp
autocmd Filetype html setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for html
autocmd Filetype yml setlocal ts=2 sw=2 sts=2                                   " Indent 2 spaces for yml
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2                                  " Indent 2 spaces for yaml

"""""" Vim UI 
set foldenable                                                                  " Enable folding
set foldmethod=indent                                                           " Fold based on line indets
set foldlevel=99
set number                                                                      " Show line numbers
set mouse=a                                                                     " Enable mouse
set viminfo='100,<100,s10,h                                                     " 100 marks, 100 lines, 10 kb, disable search highlight
set title                                                                       " Show VIM in terminal title
set backspace=indent,eol,start                                                  " Allow backspacing for everything
set ruler                                                                       " Show cursor location
set incsearch                                                                   " Highlight first match when searching as its typed
set path+=**                                                                    " Enable fuzzy search for the find command
"set pastetoggle=π                                                              " Toggle paste mode

"""""" Vim files
set backupdir=~/.vim/.backup//                                                  " Set backup location
set directory=~/.vim/.swp//                                                     " Set swap file location
set undofile                                                                    " Store undo history so it will persist when reopening a file
set undodir=~/.vim/.undo//                                                      " Set undo file location
set undolevels=1000                                                             " Max number of changes that can be undone
set undoreload=10000                                                            " Max number of lines saved for undo on a buffer reload

"""""" Default file browsing
let g:netrw_browse_split=4                                                      " Open file in prior window
let g:netrw_altv=1                                                              " Open file splits to the right
let g:netrw_liststyle=3                                                         " Tree view 
let g:netrw_list_hide=netrw_gitignore#Hide()                                    " Hide files ignored by git
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'                                  " Not too sure what this does

"""""" Commands
" Command to generate ctags in the current directory
command! Tag !ctags -R .

colorscheme palenight 

""""""""""""""""""""""""""""""""
""""""""""""""" Key bindings
""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"                                                      " Map leader to space
imap jk <esc> 
imap JK <esc>
map <C-b> :NERDTreeToggle<CR>
map <silent> <C-n> :noh<CR>
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Y yanks to end of line
nnoremap <Y> y$<CR>                                                             
" Leader+e opens vimrc for editing and loads on save
map <leader>e :tabe ~/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC
" Leader+t opens terminal
map <leader>t :terminal<cr>

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

" Jedi Vim
let g:jedi#use_splits_not_buffers = "left"

" fzf
set rtp+=~/dev-env/scripts/fzf
" Auto open NERDTree when running vim w/o arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ALE
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
