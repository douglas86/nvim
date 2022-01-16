set nocompatible
filetype plugin on

"File to deal with all of my settings
source $HOME/.config/nvim/ftplugin/settings.vim
" File for shortcuts
source $HOME/.config/nvim/ftplugin/shortcuts.vim

"This will call vim plug to run all plugins from the plugins file
call plug#begin('~/.config/nvim/plugged')

source $HOME/.config/nvim/plugins/plugins.vim

call plug#end()

"File for all plugin settings in vim
source $HOME/.config/nvim/plugins/settings.vim
