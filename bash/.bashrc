# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## Powerline
#if [ -f $(which powerline-daemon) ]; then
#    powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#    source /usr/share/powerline/bash/powerline.sh
#fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Prompt
#export PS1="\[\033[01;33m\][$USER@$HOSTNAME]\[\033[0;00m\] \[\033[01;32m\]\w\\$\[\033[0;00m\] "</div>

## For Projects/dofFiles
alias mystow='stow --dir=${HOME}/Projects/dotFiles/ --target=${HOME}'

# sudo trick for aliases
alias sudo='sudo '

# User specific aliases and functions
alias lha='ls -lha'
alias lh='ls -lh'
alias ll='ls -l'
alias la='ls -a'
alias lo='ls -o'
#alias rm='rm -I --preserve-root'
alias rm='rm -i'
alias mv='mv -i'

alias vlock='clear; vlock'
alias less='less -FSRX'

## Tmux specific
#alias tmux='tmux attach -t base || tmux new -s base'

## Rsync specific
alias gsync="rsync --filter=':- .gitignore'"

## Fancy man pages
# termcap termininfo 
# ks      smkx        make the keypad send commands
# ke      rmkx        make the keypad send digits
# vb      flash       emit visual bell
# mb      blink       start blink
# me      sgr0        turn off bold, blink and underline
# so      smso        start standout (reverse video)
# se      rmso        stop standout
# us      smul        start underline
# ue      rmul        stop sunderline

# Colorcodes
# Black      0;30   Dark Gray    1;30
# Red        0;31   Light Red    1;30
# Green      0;32   Light Green  1;30
# Brown      0;33   Yellow       1;30
# Blue       0;34   Light Blue   1;30
# Purple     0;35   Light Purple 1;30
# Cyan       0;36   Light Cyan   1;30
# Light Gray 0;37   White        1;30

#export LESS_TERMCAP_mb=$(printf '\e[01;31m') # begin blinking
export LESS_TERMCAP_mb=$(printf '\e[01;103m') # begin blinking
#export LESS_TERMCAP_md=$(printf '\e[01;35m') # begin bold
export LESS_TERMCAP_md=$(printf '\e[01;93m') # begin bold
export LESS_TERMCAP_me=$'\e[0m'     # end mode
export LESS_TERMCAP_se=$'\e[0m' # end standout-mode
export LESS_TERMCAP_so=$(tput bold; tput setaf 8; tput setab 3) # begin standout mode – info box
export LESS_TERMCAP_ue=$'\e[0m'     # end underline
export LESS_TERMCAP_us=$'\e[04;32m' # begin underline

#export LESS_TERMCAP_mr=$(tput rev)
#export LESS_TERMCAP_mh=$(tput dim)
#export LESS_TERMCAP_ZN=$(tput ssubm)
#export LESS_TERMCAP_ZV=$(tput rsubm)
#export LESS_TERMCAP_ZO=$(tput ssupm)
#export LESS_TERMCAP_ZW=$(tput rsupm)

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

#12: Show open tcp/udp/listening/all/numeric/process
alias ports='ss -tulanp'

#18: Update RHEL / CentOS / Fedora Linux server
alias update='dnf update'
alias updatey='dnf -y update'

