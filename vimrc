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
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview  " Disable doc window on completion
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
let mapleader=','

syntax on
colorscheme wombat256

filetype off
source ~/.vim/plugins.vim
filetype plugin indent on

source ~/.vim/keymaps.vim
