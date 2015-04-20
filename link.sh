#!/bin/sh
dir=`pwd`

git submodule init
git submodule update

ln -sf $dir/.gitignore ~/
ln -sf $dir/.gitconfig ~/
ln -sf $dir/.vimrc ~/
ln -sf $dir/.zshrc ~/
ln -sf $dir/.tmux.conf ~/
ln -sf $dir/.redis.conf ~/
ln -sf $dir/.gemrc ~/
ln -sf $dir/.wgetrc ~/
ln -sf $dir/.jshintrc ~/
ln -sf $dir/.eslintrc ~/

if [ "$(uname)" == "Darwin" ]; then
  ln -sfh $dir/.zsh ~/.zsh
  ln -sfh $dir/.vim ~/.vim
  ln -sfh $dir/.oh-my-zsh ~/.oh-my-zsh
else
  ln -sfT $dir/.zsh ~/.zsh
  ln -sfT $dir/.vim ~/.vim
  ln -sfT $dir/.oh-my-zsh ~/.oh-my-zsh
fi
