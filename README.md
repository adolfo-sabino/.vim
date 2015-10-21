Edric Garran's Vim Configuration
================================

Dependencies
------------
* vim (7.4+) with flags
  - python2interp
  - python3interp
  - luainterp (optional for neocomplete)
* clang (optional for C++ autocompletion)
* nodejs/npm (optional for javascript autocompletion)


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

Bugs
----
* ncurses currently has a bug where stderr output glitches up
  everything, so it's recommended to run vim with 2>/dev/null
