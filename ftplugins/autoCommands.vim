"coc-prettier
au CursorHold,BufWinLeave *.html,*.css,*.js,*.jsx,*.json,*.tsx,*.ts :CocCommand prettier.formatFile <CR>

" vim-code-dark
au VimEnter * colorscheme codedark

"cursor is always in middle of screen
au CursorMoved,CursorMovedI * call CentreCursor()

"starts spell checking of all markdown files
au VimEnter,BufEnter *.md :set spell

"save vim sessions
au InsertLeave,BufWrite,VimLeave *.html,*.css,*.jsx,*.js,*.json,*.tsx,*.ts :mksession! session.vim
