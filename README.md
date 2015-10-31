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
clang_complete interacts badly with ncurses 6. If you experience
glitches in C/C++ files, apply this patch in bundle/clang_complete:

    diff --git a/plugin/clang/cindex.py b/plugin/clang/cindex.py
    index eb05560..bfeb58d 100644
    --- a/plugin/clang/cindex.py
    +++ b/plugin/clang/cindex.py
    @@ -1991,6 +1991,7 @@ class TranslationUnit(ClangObject):
             if args is None:
                 args = []

    +        args.append('-fno-color-diagnostics')
             if unsaved_files is None:
                 unsaved_files = []
