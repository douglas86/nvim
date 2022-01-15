To install neovim on you system using snap store
	$ sudo snap install nvim --classic
	
Create a nvim directoy inside .config directoy this is to store all settings for nvim
	$ cd .config
	$ git clone git@github.com:douglas86/nvim.git
	
Install a package manager, I am using vim-plug
	$ curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
	
