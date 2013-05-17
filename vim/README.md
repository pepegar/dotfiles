Carpeta de Configuración Vim
============================

En esta carpeta se almacena la configuración de VIM. 

Para clonarla:

	cd ~/
	git clone https://github.com/jlgarhdez/vim.git .vim
	ln -s .vim/vimrc .vimrc
	cd .vim
	git submodule init
	git submodule update

Con esto nos crea la carpeta de configuración y, aparte hace el symlink al
VIMRC.

Enjoy... :)
