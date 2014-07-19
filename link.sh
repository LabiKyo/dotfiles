#!/bin/sh
cd ~
ln -sf ./.vim/.gitignore ./
ln -sf ./.vim/.gitconfig ./
ln -sf ./.vim/.vimrc ./
ln -sf ./.vim/.vimrc.user ./
ln -sf ./.vim/.vimrc.keymap ./
ln -sf ./.vim/.vimrc.plugin ./
ln -sf ./.vim/.zshrc ./
ln -sf ./.vim/.tmux.conf ./
ln -sf ./.vim/.redis.conf ./
ln -sf ./.vim/.gemrc ./

ln -sfh ./.vim/.zsh ./.zsh
ln -sfh ./.vim/.oh-my-zsh ./.oh-my-zsh
