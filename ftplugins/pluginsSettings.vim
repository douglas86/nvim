" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'

" vim-code-dark
let g:airline_theme = 'codedark'

"fuzzy finder
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
			\ 'ctrl-t':'tab-split',
			\ 'ctrl-s':'split',
			\ 'ctrl-v':'vsplit'
			\ }
"if using this make sure to install silversearcher-ag
"$ sudo apt-get install silversearcher-ag
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"coc.nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_global_extensions = ['coc-explorer', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-snippets']

"close-buffers
" timer to close all hidden buffers every 5 sec
let timer = timer_start(5000, 'CloseHiddenBuffers', {'repeat':-1})
function! CloseHiddenBuffers(timer)
	execute 'Bdelete hidden'
endfunction

" vim-signify
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

" emmet-vim
let g:user_emmet_leader_key=','

" vim-auto-save
let g:auto_save = 1 " enable AutoSave on Vim startup

" nerdcommenter
let g:NERDSpaceDelims = 1 "Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 "Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' "Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1 "Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } "Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 "Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 "Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 "Enable NERDCommenterToggle to check all selected lines is commented or not 

" vimwiki
" refer to the md plugins file for these settings
let g:vimwiki_list = [{'path':'~/.config/nvim/vimwiki', 'syntax':'default', 'ext':'.md'}]
let g:vimwiki_hl_headers = 1
au filetype vimwiki silent! iunmap <buffer> <Tab>

au BufNewFile ~/.config/nvim/vimwiki/diary/*.md :silent 0r !~/.config/nvim/vimwiki/templates/diary-template '%'

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile,BufEnter diary.md VimwikiDiaryGenerateLinks
augroup end

" limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
au BufWinEnter *.md :Limelight

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
