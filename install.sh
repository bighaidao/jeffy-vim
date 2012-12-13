#!/bin/bash

echo "This install will NOT backup your old vim files."
echo -n "Did you backup your old vim files. [y,n]? "
read ret
if test $ret != y ; then
	echo "Install exit."
	exit
fi

### install new files
echo -n "Install new vim files..."
# remove old files
rm -rf ~/.vim ~/.vimrc
# copy new files
cp -r ./vimfiles ~/.vim
cp ./vimrc ~/.vimrc
# remove all hidden files, such as .svn ...
find ~/.vim -type d -name '.svn' | xargs rm -rf
echo "done!" 

### finish install
echo "install finished, enjoy yourself!"
