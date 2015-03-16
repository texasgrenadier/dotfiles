alias ls='ls -Gh'
alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

alias ber="bundle exec rake"
alias flushmc-ahl2="echo 'flush_all' | nc ahlmemcache2.usweb.costar.local 11211"
alias flushmc-ahl3="echo 'flush_all' | nc ahlmemcache1.usweb.costar.local 11211"

alias mysql-start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql-stop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias mysql-status="sudo /usr/local/mysql/support-files/mysql.server status"

alias rvm-ahl2="rvm use ruby-1.8.7-p374"
alias rvm-ahl3="rvm use ruby-1.9.3-p484"

alias vdf="vagrant destroy --force"
alias vup="vagrant up"
alias vs="vagrant status"
alias vssh="vagrant ssh"

#alias sshtunnels.productionauto='ssh -L 10080:10.0.1.51:80 -L 10081:logstash.production.auto.com:80 -L 9200:logstash.production.auto.com:9200 chuck@bastion.production.auto.com'
alias sshtunnels.productionauto='ssh -L 10080:10.0.1.51:80 -L 10081:logstash.production.auto.com:80 -L 9200:logstash.production.auto.com:9200 auto-production-bastion'
