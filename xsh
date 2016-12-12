#Forwarding via ssh where X11Forwarding is turned off in sshd.
#
# > ssh remote.host.example.com xterm
# xterm: Xt error: Can't open display: 
# xterm: DISPLAY is not set
# > source xsh
# > xsh remote.host.example.com xterm
# << xterm magically apears >>
xsh () { t=$1;h=$(echo $t|sed 's/.*@//');shift;ssh -X -Y -o ProxyCommand="ssh $t /usr/sbin/sshd -i -o X11Forwarding=yes -o HostKey=~/.ssh/id_rsa -f /dev/null" xsh-$h $*; } 
