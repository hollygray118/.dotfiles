#!/bin/bash
# Create variable to store uname's output
var=$(uname)
# Checks to see if the uname output matches "Linux" 
if [ $var=="Linux" ];
then
	echo "they match" >> linuxsetup.log
else
	echo "error" >> linuxsetup.log
	exit
fi
# Use -p option to only create TRASH directory if it dne
mkdir -p ~/.TRASH
# Create variable to store file's path
FILE=~/.vimrc
# If it exists then change the name and send message to 
if test -f "$FILE"; then
cd ~
mv .vimrc .bup_vimrc
echo "file was changed to .bup_vimrc" >> linuxsetup.log
fi
# Overwrite the contents of the etc/vimrc file to .vimrc
~/.dotfiles/etc/vimrc > ~/.vimrc
# add the statement to the end of the .bashrc file in home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
