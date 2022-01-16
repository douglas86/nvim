"coc-explorer
map m :CocCommand explorer <CR>

" coc-prettier
au CursorHold,BufLeave,VimLeave *.html,*.css,*.js,*.jsx :CocCommand prettier.formatFile <CR>
