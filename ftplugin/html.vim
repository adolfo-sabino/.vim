setlocal sw=4 sts=4
setlocal omnifunc=htmlcomplete#CompleteTags

" autoclose tags
inoremap > ><esc>mqa</<C-x><C-o><esc>`qli
inoremap /> />
