"coc-explorer
map m :CocCommand explorer <CR>

" coc-prettier
au InsertLeave *.html,*.css,*.js,*.jsx,*.json :CocCommand prettier.formatFile <CR>
