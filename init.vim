set nocompatible
filetype plugin on

call plug#begin('~/.config/nvim/plugged')

source $HOME/.config/nvim/ftplugins/plugins.vim

call plug#end()

"Settings for plugins
source $HOME/.config/nvim/ftplugins/pluginsSettings.vim

"shortcuts
source $HOME/.config/nvim/ftplugins/shortcuts.vim

"generalSettings
source $HOME/.config/nvim/ftplugins/generalSettings.vim

"autoCommands
source $HOME/.config/nvim/ftplugins/autoCommands.vim
