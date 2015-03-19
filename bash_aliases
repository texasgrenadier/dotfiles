
# Unix
alias ls='ls -Gh'
alias tlf="tail -f"
alias ...="cd ../.."
alias ..="cd .."

# Editors
alias Emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

# Git
alias g="git"

# Vagrant
alias vdf="vagrant destroy --force"
alias vup="vagrant up"
alias vs="vagrant status"
alias vssh="vagrant ssh"

# Bundler
alias be="bundle exec"
alias b="bundle"
alias bi="bundle install --path vendor/bundle --quiet"
alias gtags="bundle list --paths | ctags ."

# Rails 3
alias r="rails"
alias rc="be rails console"
alias rg="be rails generate"
alias rs="be rails server"
alias rr="be rails runner"
alias rrs="be rescue rails server"
alias precompile="RAILS_ENV=production ber assets:precompile"
alias clean="ber assets:clean"
alias migrate="rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare"
alias remigrate="ber db:migrate && ber db:migrate:redo && ber db:schema:dump && ber db:test:prepare"
alias fmigrate="ber db:drop && ber db:create:all && ber db:migrate && ber db:test:prepare"
alias remongrate="ber mongoid:migrate && ber mongoid:migrate:redo"

# Datastores
alias poston="pg_ctl -D /usr/local/var/postgres -l logfile start"
alias postoff="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias redison="redis-server /usr/local/etc/redis.conf"
alias redis="redis-server /usr/local/etc/redis.conf"
alias riakon="riak start"
alias riakoff="riak stop"
alias rethink="rethinkdb"

# MySQL
alias mysql-start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql-stop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias mysql-status="sudo /usr/local/mysql/support-files/mysql.server status"

# Junk Drawer
alias ber="bundle exec rake"
alias jenkinson="java -jar /usr/local/opt/jenkins/libexec/jenkins.war"
alias elastic="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"
alias thin="be thin start"
alias unicorn="be unicorn -p 3000"
alias pry-rails="pry -r ./config/environment"
alias sandbox="cd $HOME/Development/"
#alias sshtunnels.productionauto='ssh -L 10080:10.0.1.51:80 -L 10081:logstash.production.auto.com:80 -L 9200:logstash.production.auto.com:9200 chuck@bastion.production.auto.com'
alias sshtunnels.productionauto='ssh -L 10080:10.0.1.51:80 -L 10081:logstash.production.auto.com:80 -L 9200:logstash.production.auto.com:9200 auto-production-bastion'


alias show-hidden-files="defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder"
alias hide-hidden-files="defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder"

alias flushmc-ahl2="echo 'flush_all' | nc ahlmemcache2.usweb.costar.local 11211"
alias flushmc-ahl3="echo 'flush_all' | nc ahlmemcache1.usweb.costar.local 11211"

alias rvm-ahl2="rvm use ruby-1.8.7-p374"
alias rvm-ahl3="rvm use ruby-1.9.3-p484"
