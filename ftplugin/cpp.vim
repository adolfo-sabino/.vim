setlocal cinoptions=g0  " make C++ scope specifiers unindented

let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-std=c++14 -Wall -pedantic'
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_remove_include_errors = 1
