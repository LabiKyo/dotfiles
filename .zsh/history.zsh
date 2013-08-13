# how many line/command we record
export HISTSIZE=10000

# where we record them
export HISTFILE="$HOME/.zshhistory"

# comit the conf
export SAVEHIST=$HISTSIZE

# tell it to ignore the duplicate entries
setopt hist_ignore_all_dups

# set up the extended globing - that's so nice :)
setopt extendedglob

# append command to history file once executed
setopt INC_APPEND_HISTORY
