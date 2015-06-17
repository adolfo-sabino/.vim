setlocal nosmartindent

nmap <leader>T :!nosetests -v<CR>
nmap <leader>t :!nosetests -v %<CR>

nmap <leader>C :!nosetests --with-coverage --cover-erase --cover-package .<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package %<CR>

nmap <leader>r :!python %<CR>
nmap <leader>R :!python -i %<CR><CR>

let g:syntastic_python_checkers = ['python', 'flake8', 'pylint']


" Add virtualenv support
py << EOF
import os.path
import sys
import vim

virtualenv = os.environ.get('VIRTUAL_ENV')
if virtualenv is not None:
    sys.path.insert(0, virtualenv)
    activate = os.path.join(virtualenv, 'bin', 'activate_this.py')
    execfile(activate, {'__file__': activate})
EOF
