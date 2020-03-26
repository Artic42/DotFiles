#Clone DotFiles
cd ~
if [-d "DotFiles"];
	then 
		git clone https://github.com/artic42/DotFiles.git
	else
		cd DotFiles
		git pull
		cd ..
fi

#Copy config files to home directory
cd DotFiles
#Config Vim
rm -rf ~/.vim
cp -rf vim ~/.vim
cp -f vimrc ~/.vimrc

#Add necesary plugins to the standard plugin managerfor vim 8.XX
cd ~/.vim/pack/artic/start/

#NERDTree
if [-d "nerdtree"];
	then
		git clone https://github.com/preservim/nerdtree.git
		vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
	else
		cd nerdtree
		git pull
		cd ..
fi

#Vim-airline
if [-d "vim-airline"];
	then
		git clone https://github.com/vim-airline/vim-airline.git
	else
		cd vim-airline
		git pull
		cd ..
fi

if [-d "vim-airline-themes"];
	then
		git clone https://github.com/vim-airline/vim-airline-themes.git
	else
		cd vim-airline-themes
		git pull
		cd ..
fi

#Gruvbox colorscheme
if [-d "gruvbox"];
	then
		git clone https://github.com/morhetz/gruvbox.git
	else
		cd gruvbox
		git pull
		cd ..
fi
#Go back to DotFiles
cd ~/DotFiles
#Config Tmux
cp -f tmux.conf ~/.tmux.conf
rm -rf ~/.tmux
cp -rf tmux ~/.tmux
#Config bash
cp -f bash_logout ~/.bash_logout
cp -f bash_profile ~/.bash_profile
cp -f bashrc ~/.bashrc
#Config powerline
rm -rf ~/.config/powerline-shell
cp -rf powerline-shell ~/.config/
