if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'
