setlocal nosmartindent

nmap <leader>T :!nosetests -v<CR>
nmap <leader>t :!nosetests -v %<CR>

nmap <leader>C :!nosetests --with-coverage --cover-erase --cover-package .<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package %<CR>

nmap <leader>r :!python %<CR>
nmap <leader>R :!python -i %<CR><CR>

let g:syntastic_python_checkers = ['python', 'flake8']
