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
Plugin 'terryma/vim-multiple-cursors'

" Autocomplete
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'

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

source ~/.vim/plugins_config/airline.vim
source ~/.vim/plugins_config/syntastic.vim
source ~/.vim/plugins_config/multicursor.vim
source ~/.vim/plugins_config/supertab.vim
