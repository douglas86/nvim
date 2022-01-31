set nu "Set line numbering
" set showmatch "show matching
" set ignorecase "case insensitive
" set hlsearch "highlight search
" set incsearch "incremental search
set tabstop=2 "number of columns occupied by a tab
set softtabstop=2 "see multiple spaces as tabstop
set expandtab "converts tabs to white spaces
" syntax on "syntax highlighting
set clipboard+=unnamedplus "using system clipboard
set ttyfast "Speed up scrolling in vim
" set spell "enable spell check
set noswapfile "disable creating swap file
set autoread

"Auto commands
au CursorHold * checktime

" color codes for popup menu
hi Pmenu ctermbg=darkgrey
hi PmenuSel ctermbg=lightblue

" close preview window when saving file
autocmd BufWrite *.* pclose
" au InsertLeave,TextChanged *.* :w!
