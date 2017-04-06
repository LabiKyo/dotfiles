#!/bin/sh
dir=`pwd`

git submodule init
git submodule update

ln -sf $dir/gitignore ~/.gitignore
ln -sf $dir/.gitconfig ~/
ln -sf $dir/.vimrc ~/
ln -sf $dir/.zshrc ~/
ln -sf $dir/.tmux.conf ~/
ln -sf $dir/.redis.conf ~/
ln -sf $dir/.gemrc ~/
ln -sf $dir/.wgetrc ~/
ln -sf $dir/.jshintrc ~/
ln -sf $dir/.eslintrc ~/

# TODO: init oh-my-zsh repo and link custom scripts
if [ "$(uname)" == "Darwin" ]; then
  ln -sfh $dir/.vim ~/.vim
else
  ln -sfT $dir/.vim ~/.vim
fi
