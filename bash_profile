if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'

export PATH="/usr/local/bin:$PATH"

PATH="/Applications/VMware OVF Tool:${PATH}"
export PATH

export P4CONFIG=.p4config
export P4EDITOR=/usr/bin/vi
