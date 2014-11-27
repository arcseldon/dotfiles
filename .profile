# alias gvim='open -a MacVim'
gvim() {
    local f
    for f; do
        test -e "$f" || touch "$f"
    done
    open -a macvim "$@"
}

export EDITOR=vim
set -o vi

export CVS_RSH="ssh"
#export CVSROOT=:ext:bjrichard@cvs.exava.us:/data/cvsroot
export CVSROOT=:pserver:bjrichard@cvs.exava.us:/data/cvsroot
alias cvsx='cvs -d'${CVSROOT}


. ~/code/z/z.sh


export JSTESTDRIVER_HOME=~/bin

##
# Your previous /Users/arcseldon/.bash_profile file was backed up as /Users/arcseldon/.bash_profile.macports-saved_2012-12-06_at_17:26:19
##
# MacPorts Installer addition on 2012-12-06_at_17:26:19: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/git/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:~/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home
# export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
# export JAVA_HOME=`/usr/libexec/java_home -v 1.7.0_11`
export CATALINA_HOME=/Users/arcseldon/apps/mac
# export CATALINA_HOME=/Users/arcseldon/apache-tomcat-7.0.35
# export JBOSS_HOME=/Users/arcseldon/jboss-as-7.1.1.Final
export GROOVY_HOME=/Users/arcseldon/.gvm/groovy/current
# export NODE_PATH=/usr/local/lib/node_modules

# export MYSQL_HOME=/usr/local/opt/mysql
# alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
# alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'
export PATH=$PATH:~/dev/android-sdk-macosx/tools:~/dev/android-sdk-macosx/platform-tools
export PATH=/usr/local/mysql/bin:$PATH
# export PATH=/usr/local/lib/node_modules:$PATH
# export PATH=./node_modules/.bin:$PATH
export PATH=$PATH:~/dbs

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin:~/scripts
export EC2_PRIVATE_KEY=`ls $EC2_HOME/MAC1.pem`
export EC2_CERT=`ls $EC2_HOME/MAC1.pem`
AWS_ACCESS_KEY=AKIAJ245MLUGW4DYLMLQ
AWS_SECRET_KEY=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

export GIT_EDITOR=`which vim`

export MAMP_PHP=/Applications/MAMP/bin/php/php5.5.10/bin
export PATH=$MAMP_PHP:$PATH

alias vim='/usr/local/bin/vim'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias c='clear'
alias ll='ls -haltr'
# alias sha1='openssl sha1'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias h='history'
alias j='jobs -l'
alias nowdate='date +"%Y-%m-%d"'
alias wkdir='mkdir `date +"%y%m%d"` && cd `date +"%y%m%d"`'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias grio='grep -rio'
alias aserver=~/scripts/server.sh
alias _gitk=~/scripts/_gitk.sh
alias _gitd=~/scripts/_gitd.sh
alias memcached-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias memcached-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias memcached-restart="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist;launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"

alias wgetp='wget -qO- '

alias dfmlogs="heroku pt:logs --app dfm-core-app-production -t"
alias dfmpt="heroku addons:open --app dfm-core-app-production papertrail"
alias hs='ghci'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/arcseldon/.gvm/bin/gvm-init.sh" ]] && source "/Users/arcseldon/.gvm/bin/gvm-init.sh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
