PS1="\h:\W$ "
PATH=$PATH:/usr/local/mysql/bin:$HOME/.rvm/bin:$HOME/bin

DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

source ~/git-completion.bash

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

HISTCONTROL=ignoredups:ignorespace
HISTFILESIZE=2000
HISTSIZE=1000

# append to the history file, don't overwrite it
shopt -s histappend
