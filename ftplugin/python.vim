setlocal nosmartindent
setlocal omnifunc=jedi#completions

nmap <leader>T :!nosetests -v<CR>
nmap <leader>t :!nosetests -v %<CR>

nmap <leader>C :!nosetests --with-coverage --cover-erase --cover-package .<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package %<CR>

nmap <leader>! :!python %<CR>
nmap <leader>_ :!python -i %<CR><CR>

let g:syntastic_python_checkers = ['python', 'pylint', 'pep8']

" jedi populates the completion list backwards
let g:SuperTabDefaultCompletionType = '<c-n>'
