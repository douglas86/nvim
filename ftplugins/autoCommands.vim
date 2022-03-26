"coc-explorer
au VimEnter * :CocCommand explorer

"coc-prettier
au CursorHold,BufWinLeave *.html,*.css,*.js,*jsx,*.json,*.tsx,*ts :CocCommand prettier.formatFile <CR>

" vim-code-dark
au VimEnter * colorscheme codedark

"cursor is always in middle of screen
au CursorMoved,CursorMovedI * call CentreCursor()
