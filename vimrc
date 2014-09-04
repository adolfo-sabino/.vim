set nocompatible        " use vim defaults
set scrolloff=999       " center cursor vertically
set t_Co=256            " enable 256 color mode
set cursorline          " highlight current line
set laststatus=2        " enable airline
set ttimeoutlen=0       " fix delay on airline on mode switching

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

set completeopt=menu,menuone,longest  " Disable doc window on completion

set backspace=indent,eol,start  " make that backspace key work the way it should

set clipboard=unnamedplus  " make system clipboard work

set omnifunc=syntaxcomplete#Complete

syntax on

colorscheme wombat256

" Setup Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/Syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Townk/vim-autoclose'
Plugin 'Valloric/YouCompleteMe'

" Python
Plugin 'michaeljsmith/vim-indent-object'

" Django
Plugin 'django.vim'

" Org-Mode
Plugin 'tpope/vim-speeddating'
Plugin 'jceb/vim-orgmode'

call vundle#end()

filetype plugin indent on

"
" General customizations
"

" Airline Setup
let g:airline_powerline_fonts=1                  " use powerline arrows
let g:airline_theme='zenburn'                    " nicer theme
let g:airline#extensions#tabline#enabled=1       " enable tabline support
let g:airline#extensions#tabline#tab_nr_type=1   " show tab numbers
let g:airline#extensions#tabline#show_buffers=0  " hide buffers
let g:airline#extensions#tabline#tab_min_count=2 " hide tabline for one tab

" Enable :lnext for Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=0  " Don't show location list

let g:syntastic_check_on_open=1

" Clear whitespace before saving
au BufWritePre * :%s/\s\+$//e

" Point to ycm configuration
let g:ycm_global_ycm_extra_conf='~/.vim/extra/.ycm_extra_conf.py'
let g:ycm_server_keep_logfiles=1
let g:ycm_server_log_level='debug'
let g:ycm_path_to_python_interpreter='/usr/bin/python2'

" Fix bug with YCM & autoclose
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}


"
" Key mappings
"

" Use , as leader instead of \
let mapleader=','

" Emmet leader key
let g:user_emmet_leader_key='<C-e>'

" Toggle spellchecking
nnoremap <silent> <C-s> :setlocal spell! spelllang=en<cr>

" Quicker way to save from insert mode
imap :w <esc>:w

" Get rid of search highlights
nmap <C-h> :noh<cr>

" Emacs-like TODO management for org-mode
nmap <C-c><C-t> <S-right>

" Navigate syntastic error list
function NextError()
    try
        try
            lnext
        catch /^Vim\%((\a\+)\)\=:E553/
            lfirst
        endtry
    catch /^Vim\%((\a\+)\)\=:E42/
    endtry
endfunction

function PrevError()
    try
        try
            lNext
        catch /^Vim\%((\a\+)\)\=:E553/
            llast
        endtry
    catch /^Vim\%((\a\+)\)\=:E42/
    endtry
endfunction

nmap <silent> <C-j> :call NextError()<cr>
nmap <silent> <C-k> :call PrevError()<cr>

nmap gd :YcmCompleter GoToDefinition<CR>
nmap gb <C-O>

"
" Gvim stuff
"

set guifont=Terminus\ 12
set guioptions-=m  "remove menu bar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=R  "remove right-hand scroll bar
set guioptions-=l  "remove right-hand scroll bar
set guioptions-=L  "remove right-hand scroll bar
set guioptions-=T  "remove toolbar
