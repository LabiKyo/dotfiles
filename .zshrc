#! /bin/zsh
# load configs
DIR="$HOME/.zsh"
for FILE in `ls $DIR`; do
    source "$DIR/$FILE"
done

# set Emacs mode
bindkey -e

# Bind shift+tab to go backward completion
bindkey  '^[[Z' reverse-menu-complete

# set AUTO_CD
setopt AUTO_CD

if [[ "`uname`" == 'Linux' ]]; then
    if [[ -z $TMUX ]]; then
        tmux attach
    fi
fi
