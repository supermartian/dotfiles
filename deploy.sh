#!/bin/bash
# Basic configs
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.tmux-powerlinerc ~/.tmux-powerlinerc

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Tmux powerline
git clone https://github.com/erikw/tmux-powerline.git ~/powerline
cp mytheme.sh ~/powerline/themes

# powerline
pip3 install powerline-status

# powerline-fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
