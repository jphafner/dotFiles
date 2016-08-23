# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias lh='ls -lh'
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -i'
alias mv='mv -i'

# http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

#2: Control cd command behavior
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

#4: Start calculator with math support
alias bc='bc -l'

#4: Generate sha1 digest
alias sha1='openssl sha1'

#7: Make mount command output pretty and human readable format
alias mount='mount | column -t'

# handy short cuts #
alias h='history'
alias j='jobs -l'

#12: Show open ports
alias ports='netstat -tulanp'

#18: Update RHEL / CentOS / Fedora Linux server
alias update='yum update'
alias updatey='yum -y update'


