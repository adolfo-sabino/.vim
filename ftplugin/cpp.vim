Plugin 'clang-complete'

" Enable C++11 in syntastic
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-std=c++11'

" Enable C++11 in clang-complete
let g:clang_user_options='-std=c++11'
