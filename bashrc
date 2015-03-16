PS1="\h:\W$ "
PATH=$PATH:/usr/local/mysql/bin:$HOME/.rvm/bin:$HOME/bin

DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

alias ls='ls -Gh'
alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"


alias mysql-start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql-stop="sudo /usr/local/mysql/support-files/mysql.server stop"

alias vdf="vagrant destroy --force"
alias vup="vagrant up"
alias vssh="vagrant ssh"

alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
