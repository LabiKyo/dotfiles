#! /bin/zsh
# load configs
DIR="$HOME/.zsh"
for FILE in `ls $DIR`; do
    source "$DIR/$FILE"
done

# set locale
export LANG=en_US.UTF-8

# set Emacs mode
bindkey -e

# Bind shift+tab to go backward completion
bindkey  '^[[Z' reverse-menu-complete

# set AUTO_CD
setopt AUTO_CD
