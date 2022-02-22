"coc-explorer
map m :CocCommand explorer <CR>

" coc-prettier
" au InsertLeave *.html,*.css,*.js,*.jsx,*.json :CocCommand prettier.formatFile <CR>
au CursorHold,BufWinLeave *.prisma :CocCommand prettier.formatFile <CR>
set updatetime=2000

" coc-snippets
" handling snippets
imap <c-z> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-x>'
let g:coc_snippet_prev = '<c-a>'

" coc-snippets
map S :CocCommand snippets.editSnippets <CR>
