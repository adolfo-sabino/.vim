" Clear whitespace before saving
au BufWritePre * :%s/\s\+$//e

" Get rid of search highlights
nmap <silent> <leader>h :noh<cr>
nmap <silent> <leader>H mhn`h

" Easier way to go toklast mark
nmap <silent> <leader>b <C-O>
" shortcut to saving from insert mode
inoremap :w <esc>:w
" correct regexp escaping
nnoremap / /\v
" easily reload vimrc
nnoremap <leader>R :source ~/.vim/vimrc<cr>
