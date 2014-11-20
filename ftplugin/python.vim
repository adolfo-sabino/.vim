setlocal nosmartindent

nmap <leader>T :!nosetests -v<CR>
nmap <leader>t :!nosetests -v %<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package .<CR>

let g:syntastic_python_checkers = ['python', 'flake8']
