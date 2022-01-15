set nu "Set line numbering
set showmatch "show matching
set ignorecase "case insensitive
set hlsearch "highlight search
set incsearch "incremental search
set tabstop=4 "number of columns occupied by a tab
set softtabstop=4 "see multiple spaces as tabstop
set expandtab "converts tabs to white spaces
set wildmode=longest,list "get bash-like tab completion
set cc=80 "set an 80 column border for good coding style
syntax on "syntax highlighting
set clipboard=unnamedplus "using system clipboard
set ttyfast "Speed up scrolling in vim
set spell "enable spell check
set noswapfile "disable creating swap file

" color codes for popup menu
hi Pmenu ctermbg=darkgrey
hi PmenuSel ctermbg=lightblue

" close preview window when saving file
autocmd BufWrite *.* pclose

