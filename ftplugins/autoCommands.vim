"coc-prettier
au CursorHold,BufWinLeave *.html,*.css,*.js,*jsx,*.json,*.tsx,*ts :CocCommand prettier.format <CR>

"cursor is always in middle of screen
au CursorMoved,CursorMovedI * call CentreCursor()
