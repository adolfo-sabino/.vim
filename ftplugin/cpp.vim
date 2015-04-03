setlocal cinoptions=g0  " make C++ scope specifiers unindented

" Enable C++11 in syntastic
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-std=c++1y -Wall -pedantic'
let g:syntastic_cpp_check_header=1
