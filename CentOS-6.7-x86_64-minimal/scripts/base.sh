sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl

yum -y groupinstall 'Development Tools'
yum -y install epel-release
iptables -F
service iptables stop
chkconfig iptables off
