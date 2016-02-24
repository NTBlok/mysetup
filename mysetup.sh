#! /bin/sh


sudo apt-get update

# Curl
sudo apt-get install -y curl

# Pip
sudo apt-get install python-pip
# Virtualenv
sudo apt-get install python-virtualenv
# Awsebcli
sudo pip install awsebcli

# Tree
sudo apt-get install tree

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "execute pathogen#infect()" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc
echo "syntax enable" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "set ts=4" >> ~/.vimrc
echo "set autoindent" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc
echo "set cursorline" >> ~/.vimrc
echo "set showmatch" >> ~/.vimrc
echo "let python_highlight_all = 1" >> ~/.vimrc
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/scrooloose/nerdtree.git
sudo apt-get install exuberant-ctags
git clone git://github.com/majutsushi/tagbar
sudo pip install --user jedi
git clone https://github.com/davidhalter/jedi-vim.git
#git clone git://github.com/aperezdc/vim-template.git


# NVM & Node
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

# Pixi
git clone https://github.com/pixijs/pixi.js

# Heroku
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
#heroku login
#ssh-keygen -t rsa
#heroku keys:add

git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
