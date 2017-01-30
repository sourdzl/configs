" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
" Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'

call plug#end()

set nocompatible

syntax on
let python_highlight_all = 1

filetype plugin indent on
set number

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" system clipboard
set clipboard=unnamed

set encoding=utf8
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set wrap
set laststatus=2
scriptencoding utf-8

" python PEP8 conventions
au BufNewFile,BufRead *.py
    \ set softtabstop=4
    \ set textwidth=79
    \ set autoindent
    \ set fileformat=unix



" enable folding with space bar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" auto reload changes
set autoread

" Always show current position
set ruler

" regular expressions
set magic

" Add a bit extra margin to the left
set foldcolumn=1

" ignore compiled files
set wildignore=*.o,*~,*.pyc

" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" bash like keys
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" lightline config
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

