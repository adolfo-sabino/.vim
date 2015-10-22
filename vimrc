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
set nowrap              " horizontal scrolling

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set expandtab           " Turn tabs into spaces
set shiftwidth=4        " Make indentation width 4 spaces
set softtabstop=4       " Make tab indent 4 spaces
set autoindent          " Put the cursor at the correct indentation level
set textwidth=72        " Wrap lines at column 72, more readable than 80
set formatoptions=cq    " Disable automatic wrapping as you type

set backspace=indent,eol,start  " make that backspace key work the way it should

set clipboard=unnamedplus  " make system clipboard work

syntax on

colorscheme wombat256

" Setup Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/Syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Townk/vim-autoclose'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'

" Python
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'davidhalter/jedi-vim'
Plugin 'lepture/vim-jinja'

" Web
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/html5.vim'

" C++
Plugin 'Rip-Rip/clang_complete'

call vundle#end()

filetype plugin indent on

"
" General customizations
"


" Autocompletion
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,menuone,longest  " Disable doc window on completion
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#disable_auto_complete = 1
let g:neocomplete#enable_smart_case = 1

inoremap <silent> <cr> <C-r>=<SID>accept_completion()<cr>
function! s:accept_completion()
    return (pumvisible() ? "\<C-y>" : "\<cr>")
endfunction

" Map C-Space to autocompletion
imap <silent> <NUL> <C-x><C-o>

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif


" airline Setup
let g:airline_theme='zenburn'                    " nicer theme
let g:airline_powerline_fonts=1                  " use powerline arrows
let g:airline#extensions#tabline#enabled=1       " enable tabline support
let g:airline#extensions#tabline#tab_nr_type=1   " show tab numbers
let g:airline#extensions#tabline#show_buffers=0  " hide buffers
let g:airline#extensions#tabline#tab_min_count=2 " hide tabline for one tab

" Enable :lnext for Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=0  " Don't show location list
let g:syntastic_check_on_open=1

"
" Key mappings
"

" Clear whitespace before saving
au BufWritePre * :%s/\s\+$//e

" Use , as leader instead of \
let mapleader=','

" Multiple cursor flexible exit
let g:multi_cursor_exit_from_normal_mode=0
let g:multi_cursor_exit_from_insert_mode=0

" Get rid of search highlights
nmap <C-h> :noh<cr>

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

nmap <silent> <leader>b <C-O>

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
