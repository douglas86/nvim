set nu
set title
set tabstop=2
set softtabstop=2
set clipboard+=unnamedplus
set ttyfast
set noswapfile
set autoread
set updatetime=100
setlocal spell spelllang=en_gb

"color codes for popus menu
"hi Pmenu ctermbg=darkgrey
"hi PmenuSel ctermbg=lightblue

" This functions always keeps cursor center of screen
function! CentreCursor()
				let pos = getpos(".")
				normal! zz
				call setpos(".", pos)
endfunction

"" Delete all(saved) but visible buffers
func! Delete_buffers(timer)
    " all visible buffers in all tabs
    let buflist = []
    for i in range(tabpagenr('$'))
        call extend(buflist, tabpagebuflist(i + 1))
    endfor

    " all existing buffers
    for bnr in range(1, bufnr("$"))
        if index(buflist, bnr) == -1 && buflisted(bnr)
            exe 'bd ' . bnr
        endif
    endfor
endfunc

" kill-all but visible buffers
let timer = timer_start(5000, 'Delete_buffers', {'repeat':-1})
