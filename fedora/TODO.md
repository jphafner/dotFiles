
## make systemd journal persistent
mkdir -p /var/log/journald
systemd-tmpfiles --create --prefix /var/log/journal

## files
/etc/sysctl.conf

## config
fs: btrfs LUKS

realm
remotectl
auditctl
hostnamectl
semange

## packages
workstation: Development, vim, etc...
server: freeipa-server, etc...
nas: freeipa-client, etc...
openafs: check old admin scripts and freeipa, automount
misc: powershell

powerline, tmux-powerline

## commandline
task
xargs,parallel
tpp
iftop,iptraf,nethogs
siege,tsung
duplicity,rsyncrypto
ledger
nethack,slashem,crawl
taskwarrior
ack,ag,pt
rtorrent,aria2
calcurse,rcmind,wyrd
newsbeater,rsstail
vifm,ranger
powertop,cowsay,sl,fortune
tig,cloc
qalc,ipcalc,bc
inconsolation
wemux
pdfgrep
irc-otr
surfraw,w3m
curl,lftp

htop,
dstat,sar,slurm,glanced,mtr,ttyrec,tipbt,socat,multitail,mtr
ncdu


# Graphical user
pidgeon-otr



## kickstarts
-[ ] workstation
-[ ] server
-[ ] replica
-[ ] nas

