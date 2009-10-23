#!/bin/bash
# install vim files

echo -n "Have you backup your ~/.vim and ~/.vimrc? (y|n) "
read answer
if [[ $answer == "n" ]]; then
	echo "Install abord !!!"
	exit -1
fi
echo -n "Now, install vim files..."
if [[ -d ~/.vim ]]; then
	rm -r ~/.vim
fi
if [[ -f ~/.vimrc ]]; then
	rm ~/.vimrc
fi
cp -r ./vim ~/.vim
cp ./vimrc ~/.vimrc
if [[ ! -d ~/.vim.backupdir ]]; then
	mkdir ~/.vim.backupdir
fi
echo "done." 
echo "Enjoy yourself! :-)"
