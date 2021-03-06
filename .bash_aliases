#Aliases for improved directory listings
#The --color=tty option shows items in different colors according to their type.
#For example, directories are blue, executable files are green, symlinks are cyan, etc.
#The -F option appends a symbol after entries to indicate their types.
#You might not like both options at the same time.
alias ls='ls -F --color=tty' #regular ls
alias l.='ls -dF .[a-zA-Z0-9]* --color=tty' #only show dotfiles
alias ll='ls -lhF --color=tty' #long listing
alias lsa='ls -all -h'
alias la='ls -A'
alias l='ls -CF'

#Make these commands ask before clobbering a file. Use -F to override.
#alias rm="rm -i"
#alias cp="cp -i"
alias mv="mv -i"

#rdoc
#delete folder even not empty
alias rmr="rm -r"

#Use human-readable filesizes
alias du="du -h"
alias df="df -h"

#Miscellaneous
alias bzip2='bzip2 -v'
alias j=jobs
alias cd..="cd .." #work around a common typo

#pack
alias tar_czf="tar -czf"
alias tar_xf="tar -xf"

#Automatically do an ls after each cd
cd() {
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}

#ruby aliases
alias rdoc="rdoc -N -U -c utf-8 -n README -f html -U"
alias gupd="sudo gem update"
alias gins="sudo gem install"
alias rdoc_a="rdoc -N -d -c utf-8"


#
#clear
alias c="clear"
alias e="exit"
alias s="sudo"

#openoffice
alias writer="ooffice -writer"
alias calc="ooffice -calc"

#apt
alias apt_ins='sudo apt-get install'
alias apt_rem='sudo apt-get remove'
alias apt_upd='sudo apt-get update'
alias apt_upg='sudo apt-get upgrade'
alias apt_dis='sudo apt-get dist-upgrade'
alias acs='apt-cache search'
alias acsh='apt-cache show'

#ssh connections
alias con_prod='ssh rafal@sentor.pl -p 8822'
alias lcon_prod='ssh rafal@192.168.1.115'
#alias con_db='ssh rafal@sentor.pl -p 8824'
alias con_main='ssh server@sentor.pl -p 8824'
alias lcon_main='ssh rafal@192.168.1.108'
#touch passenger
alias tpass='touch tmp/restart.txt'
#route
alias cd_work='cd /media/media/workspace/netbeans'
alias cd_apache='cd /etc/apache2'

#edit
alias snano='sudo nano'
alias sgedit='sudo gedit'
alias svim='sudo vim'

alias rmsvn='find . -type d -name '.svn' -exec rm -rf {} \;'
alias rmgit='find . -name '.git' -exec rm -rf {} \;'

#apache
alias sa2='sudo /etc/init.d/apache2'

#rails
alias sc='script/console'
alias ss='script/server'

#administration
alias ports='sudo netstat -pant'
