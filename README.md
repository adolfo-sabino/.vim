Edric Garran's Amazing Vim Configuration
========================================

Dependencies
------------
vim built with python2, python3 and lua (optional for neocomplete) support
clang (optional for C++ autocompletion)
nodejs/npm (optional for javascript autocompletion)


Installation instructions
-------------------------
```bash
cd ~
git clone git@github.com:edricgarran/.vim.git
cd ~/.vim/
git submodule init
git submodule update

vim +BundleInstall +qall

# Optional for JS autocompletion
cd bundle/tern_for_vim
npm install
```
