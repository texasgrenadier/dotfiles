PS1="\h:\W$ "
PATH=$PATH:/opt/local/sbin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/mysql/bin:$HOME/bin

DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

if [ -f ~/.bash/completions ]; then
  source ~/.bash/completions
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_aliases_work ]; then
  . ~/.bash_aliases_work
fi

HISTCONTROL=ignoredups:ignorespace
HISTFILESIZE=2000
HISTSIZE=1000

# append to the history file, don't overwrite it
shopt -s histappend

if [ -x /usr/local/opt/coreutils/libexec/gnubin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -h --color'
fi