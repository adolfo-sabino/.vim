set nocompatible        " use vim defaults
set scrolloff=999       " center cursor vertically
set t_Co=256
 
set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column
set mouse=a             " adds mouse support
 
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
 
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set foldmethod=syntax

set completeopt=menu,menuone,longest  " Disable doc window on completion

set backspace=indent,eol,start  " make that backspace key work the way it should

set clipboard=unnamedplus  " make system clipboard work

syntax on

colorscheme wombat256

" Setup Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Syntastic'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'

" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'michaeljsmith/vim-indent-object'

" C/C++
Plugin 'Rip-Rip/clang_complete'

call vundle#end()
 
filetype plugin indent on      " load indent file for specific file type


" Emmet mode key
let g:user_emmet_leader_key='<C-e>'


"
" Key mappings
" 

" Use , as leader instead of \
let mapleader=','

" Toggle spellchecking
map <silent> <C-s> :setlocal spell! spelllang=en<CR>

" Get rid of search highlights 
nnoremap <silent> <esc> :noh<CR><esc>
