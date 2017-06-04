# initialServer.sh - gives a CentOS 7 server all of the current 
# #desktop environments
#
# (c) 2017 - Timothy D. Witham tim.wookie.witham@gmail.com
# Licensed under BSD 2-Clause
`dirname $01/setRH.sh`
yum -y update
yum -y install epel-release
yum -y --enablerepo=epel groups install "MATE Desktop"
yum -y --enablerepo=epel groups install "Xfce Desktop"
yum -y --enablerepo=epel install cinnamon*
yum -y --enablerepo=epel install xrdp
yum -y install "KDE Plasma Workspaces"
yum -y install tigervnc-dirname $01*
yum -y install