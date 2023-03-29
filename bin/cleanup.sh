#!/bin/bash
rm ~/.vimrc
sed 's/"~/.dotfiles/bashrc_custom/"/" "/g'
rm ~/.TRASH
