# alias
alias linode='ssh -D 7070 labikyo@linodehost'

alias psgrep="ps aux | grep -v grep | grep"
if [[ "`uname`" == 'Linux' ]]; then
	alias ls='ls -h --color'
	alias ll='ls -ahl --color'
else
	alias ls='ls -hG'
	alias ll='ls -ahlG'
fi
alias grep="grep --color"
alias fgrep="fgrep --color"
alias du="du -h"
alias sd="sudo"

alias v="vim"
alias p="python"
alias g="git"
alias r="irb"
alias rb="ruby"

