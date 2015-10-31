let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=0  " Don't show location list
let g:syntastic_check_on_open=1

" Navigate syntastic error list
function! NextError()
    try
        try
            lnext
        catch /^Vim\%((\a\+)\)\=:E553/
            lfirst
        endtry
    catch /^Vim\%((\a\+)\)\=:E42/
    endtry
endfunction

function! PrevError()
    try
        try
            lNext
        catch /^Vim\%((\a\+)\)\=:E553/
            llast
        endtry
    catch /^Vim\%((\a\+)\)\=:E42/
    endtry
endfunction

nmap <silent> <C-j> :call NextError()<cr>
nmap <silent> <C-k> :call PrevError()<cr>
