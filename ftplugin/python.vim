setlocal nosmartindent
setlocal omnifunc=jedi#completions

nmap <leader>T :!nosetests -v<CR>
nmap <leader>t :!nosetests -v %<CR>

nmap <leader>C :!nosetests --with-coverage --cover-erase --cover-package .<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package %<CR>

nmap <leader>! :!python %<CR>
nmap <leader>_ :!python -i %<CR><CR>

let g:syntastic_python_checkers = ['python', 'mypy', 'pylint', 'pep8']
let g:jedi#force_py_version = 3
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

let g:neocomplete#force_omni_input_patterns.python =
    \ '\h\w*\|[^. \t]\.\w*'
