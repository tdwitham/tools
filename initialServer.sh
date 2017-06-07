# initialServer.sh - gives a CentOS 7 server all of the current 
# #desktop environments
#
# (c) 2017 - Timothy D. Witham tim.wookie.witham@gmail.com
# Licensed under BSD 2-Clause
source `dirname ${0}`/setRH.sh
yum -y update
yum -y install epel-release
yum -y --enablerepo=epel group install "MATE Desktop"
yum -y --enablerepo=epel group install "Xfce Desktop"
yum -y --enablerepo=epel install cinnamon*
yum -y --enablerepo=epel install xrdp
yum -y install "KDE Plasma Workspaces"
yum -y install tigervnc-*

echo "Disable SELinux"
sed -in-place=orig 's/SELINUX=\(.*\)/SELINUX=disabled/' /etc/selinux/config
setenforce 0
