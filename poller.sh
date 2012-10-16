#/usr/bin/ntpdate -b -s -u pool.ntp.org
echo STARTING script >> /home/root/logfile.txt
export SHELL=/bin/sh
export TERM=vt100
export USER=root
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export PWD=/home/root
export HOME=/home/root
export SHLVL=2
exportLOGNAME=root
d=`date` 
env >> /home/root/logfile.txt
echo $d >>/home/root/logfile.txt
ifconfig >> /home/root/logfile.txt
/usr/bin/poff
sleep 5
/usr/bin/pon
sleep 5
echo resolv.conf file contents >> /home/root/logfile.txt
cat /etc/resolv.conf >> /home/root/logfile.txt
cp /etc/open.resolv.conf /etc/resolv.conf
export gw=`ifconfig ppp0 |grep inet | awk '{print $3}'|sed /P-t-P:/s///`
export PPP0=`ifconfig ppp0 | grep "inet addr" | awk '{ print $2 }' | awk 'BEGIN { FS=":" } { print $2 }'`
echo PPP0=$PPP0
/sbin/route add -net 0.0.0.0 gw $PPP0

ifconfig >> /home/root/logfile.txt
echo remote is at $PPP0 >> /home/root/logfile.txt
rm -f mconnect.php
/usr/bin/wget http://ifconfig.me/ >> /home/root/logfile.txt
/usr/bin/poff
#route delete default gw 66.1.125.193 dev ppp0
#route add default gw 192.168.1.1 dev eth0
echo ENDING script >> /home/root/logfile.txt
d=`date` 
echo $d >>/home/root/logfile.txt
