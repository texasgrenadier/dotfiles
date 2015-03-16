PS1="\h:\W$ "
PATH=$PATH:/usr/local/mysql/bin:$HOME/.rvm/bin:$HOME/bin

DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
