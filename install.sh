#!/bin/bash

vim_source=.vimrc
vim_config=~/.vimrc
vim_home=~/.vim
vim_autoload=$vim_home/autoload
vim_backup=$vim_home/backup
vim_colors=$vim_home/colors
vim_plugged=$vim_home/plugged
vim_syntax=$vim_home/syntax
vim_ftdetect=$vim_home/ftdetect
vim_ftplugin=$vim_home/ftplugin
vim_indent=$vim_home/indent

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

if ! [ -d $vim_syntax ]; then
  echo "=> Creating $vim_syntax directory"
  mkdir $vim_syntax
fi

if ! [ -d $vim_ftdetect ]; then
  echo "=> Creating $vim_ftdetect directory"
  mkdir $vim_ftdetect
fi

if ! [ -d $vim_ftplugin ]; then
  echo "=> Creating $vim_ftplugin"
  mkdir $vim_ftplugin
fi

if ! [ -d $vim_indent ]; then
  echo "=> Creating $vim_indent directory"
  mkdir $vim_indent
fi

curl -o- https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > $vim_colors/molokai.vim
echo ""

echo "=> Downloading vim-plug"
curl -fLo $vim_autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "=> Setting up plantuml syntax..."
echo "==> Downloading plantuml syntax"
curl -o- https://raw.githubusercontent.com/aklt/plantuml-syntax/master/syntax/plantuml.vim > $vim_syntax/plantuml.vim
echo "==> Downloading plantuml file detection"
curl -o- https://raw.githubusercontent.com/aklt/plantuml-syntax/master/ftdetect/plantuml.vim > $vim_ftdetect/plantuml.vim
echo "==> Downloading plantuml indentation"
curl -o- https://raw.githubusercontent.com/aklt/plantuml-syntax/master/indent/plantuml.vim > $vim_indent/plantuml.vim
echo "==> Downloading plantuml file type plugin"
curl -o- https://raw.githubusercontent.com/aklt/plantuml-syntax/master/ftplugin/plantuml.vim > $vim_ftplugin/plantuml.vim

echo ""

