#!/bin/bash

vim_source=.vimrc
vim_config=~/.vimrc
vim_home=~/.vim
vim_autoload=$vim_home/autoload
vim_backup=$vim_home/backup
vim_colors=$vim_home/colors
vim_plugged=$vim_home/plugged

echo "Starting to configure vim"

echo "=> Checking if vim file already exist"
if [ -f $vim_config ]; then
  echo "=> Vim config file already exist, creating backup..."
  mv $vim_config $vim_config.bk
fi

echo "=> Copying vim config file"
cp $vim_source $vim_config

echo "=> Verifying vim config directory"
if ! [ -d $vim_home ]; then
  echo "=> Creating $vim_home directory"
  mkdir $vim_home
fi

if ! [ -d $vim_autoload ]; then
  echo "=> Creating $vim_autoload directory"
  mkdir $vim_autoload
fi

if ! [ -d $vim_backup ]; then
  echo "=> Creating $vim_backup directory"
  mkdir $vim_backup
fi

if ! [ -d $vim_colors ]; then
  echo "=> Creating $vim_colors directory"
  mkdir $vim_colors
fi

if ! [ -d $vim_plugged ]; then
  echo "=> Creating $vim_plugged directory"
  mkdir $vim_plugged
fi 
