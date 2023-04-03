#!/bin/bash
# Remove the .vimrc file
rm ~/.dotfiles/.vimrc
# Remove the line 
sed 's/source ~/.dotfiles/bashrc_custom//g'
# Remove the trash directory inside home directory
rm -r ~/.TRASH
