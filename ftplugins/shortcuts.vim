"mappings
map Q :q <CR>
map W :qall <CR>

"" mappings for normal mode
" moving to different window panes
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

"coc-explorer
map m :CocCommand explorer <CR>

"coc-snippets
imap <c-z> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-x>'
let g:coc_snippet_prev = '<c-a>'
map S :CocCommand snippets.editSnippets <CR>

"vim-fugitive
nmap <c-g> :Git add . <bar> Git commit<CR>
nmap <c-b> :Git push<CR>
nmap <c-B> :Git -c push.default=current push<CR>
