let g:jedi#auto_vim_configuration=0  " avoid Ctrl+C override and doc window

setlocal foldmethod=indent


nmap <leader>t :!nosetests -v<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package .<CR>
