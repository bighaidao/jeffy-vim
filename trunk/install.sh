#!/bin/bash
# install vim files

echo -n "Have you backup your ~/.vim and ~/.vimrc? (y|n) "
read answer
if [[ $answer == "n" ]]; then
	echo "Install abord !!!"
	exit -1
fi

echo -n "Now, install vim files..."

# remove old files
if [[ -d ~/.vim ]]; then
	rm -rf ~/.vim
fi
if [[ -f ~/.vimrc ]]; then
	rm ~/.vimrc
fi

# copy new files
cp -r ./jeffy-vim ~/.vim
cp ./jeffy-vimrc ~/.vimrc

# create backup directory
if [[ ! -d ~/.vim_backupdir ]]; then
	mkdir ~/.vim_backupdir
fi

echo "done." 
echo "Enjoy yourself! :-)"
