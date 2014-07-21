#!/bin/sh
git submodule init
git submodule update

cd ~
ln -sf ./.dotfiles/.gitignore ./
ln -sf ./.dotfiles/.gitconfig ./
ln -sf ./.dotfiles/.vimrc ./
ln -sf ./.dotfiles/.zshrc ./
ln -sf ./.dotfiles/.tmux.conf ./
ln -sf ./.dotfiles/.redis.conf ./
ln -sf ./.dotfiles/.gemrc ./
ln -sf ./.dotfiles/.wgetrc ./

ln -sfh ./.dotfiles/.zsh ./.zsh
ln -sfh ./.dotfiles/.vim ./.vim
ln -sfh ./.dotfiles/.oh-my-zsh ./.oh-my-zsh
