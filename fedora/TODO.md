
## make systemd journal persistent
mkdir -p /var/log/journald
systemd-tmpfiles --create --prefix /var/log/journal


## kickstarts
-[ ] workstation
-[ ] server
-[ ] replica
-[ ] nas

