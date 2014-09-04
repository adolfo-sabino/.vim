setlocal nosmartindent

nmap <leader>t :!nosetests -v<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package .<CR>
