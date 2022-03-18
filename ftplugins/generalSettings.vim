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

" This functions always keeps cursor center of screen
function! CentreCursor()
				let pos = getpos(".")
				normal! zz
				call setpos(".", pos)
endfunction

" kill-all but visible buffers
nnoremap <silent> <M-BS> :call Delete_buffers()<CR>:echo "Non-windowed buffers are deleted"<CR>

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

let timer = timer_start(5000, 'Delete_buffers', {'repeat':-1})
