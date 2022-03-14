set nu
set title
set tabstop=2
set softtabstop=2
set clipboard+=unnamedplus
set ttyfast
set noswapfile
set autoread
set updatetime=100

"color codes for popus menu
"hi Pmenu ctermbg=darkgrey
"hi PmenuSel ctermbg=lightblue

"functions
function! CentreCursor()
				let pos = getpos(".")
				normal! zz
				call setpos(".", pos)
endfunction
