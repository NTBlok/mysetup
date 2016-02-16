#! /bin/sh
#
# mysetup.sh
# Copyright (C) 2016 ubuntu <ubuntu@ip-172-31-20-177>
#
# Distributed under terms of the MIT license.
#


# Git
sudo apt-get install -y git-core

# Tree
sudo apt-get install tree

# Vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vi
echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc
echo "syntax enable" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "set ts=4" >> ~/.vimrc
git clone https://github.com/scrooloose/nerdtree.git
sudo apt-get install exuberant-ctags
git clone git://github.com/majutsushi/tagbar
git clone git://github.com/aperezdc/vim-template.git

# Project folder
mkdir ~/myproject
cd ~/myproject

# Node
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

# Pixi
git clone git@github.com:pixijs/pixi.js.git

# Heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku login
ssh-keygen -t rsa
heroku keys:add
