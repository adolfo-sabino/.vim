setlocal nosmartindent

nmap <leader>T :!nosetests -v<CR>
nmap <leader>t :!nosetests -v %<CR>

nmap <leader>C :!nosetests --with-coverage --cover-erase --cover-package .<CR>
nmap <leader>c :!nosetests --with-coverage --cover-erase --cover-package %<CR>

nmap <leader>r :!python %<CR>
nmap <leader>R :!python -i %<CR><CR>

let g:syntastic_python_checkers = ['python', 'pylint', 'flake8']
let g:jedi#popup_on_dot = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#force_py_version = 3

" Add virtualenv support
py << EOF
import os.path
import sys
import vim

if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, {'__file__': activate_this})
EOF
