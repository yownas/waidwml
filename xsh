xsh () { t=$1;h=$(echo $t|sed 's/.*@//');shift;ssh -X -Y -o ProxyCommand="ssh $t /usr/sbin/sshd -i -o X11Forwarding=yes -o HostKey=~/.ssh/id_rsa -f /dev/null" xsh-$h $*; } 
