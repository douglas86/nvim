"dracula/vim
if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula

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
