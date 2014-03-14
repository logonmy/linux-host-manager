#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi

cur_dir=$(pwd)

###################
#Set TimeZone
###################

#安装REDHAT附加软件包EPEL
rpm -ivh http://mirrors.sohu.com/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm


type -p screen >/dev/null || yum -y install screen



mv /etc/localtime /etc/localtime.bak
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

yum install -y ntp
ntpdate -u pool.ntp.org



#yum -y remove httpd*
#yum -y remove php*
#yum -y remove mysql-server mysql
#yum -y remove php-mysql

yum -y install yum-fastestmirror


#Disable SeLinux
if [ -s /etc/selinux/config ]; then
	sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
fi

cp /etc/yum.conf /etc/yum.conf.lnmp
sed -i 's:exclude=.*:exclude=:g' /etc/yum.conf


for packages in patch make cmake gcc gcc-c++ gcc-g77 flex bison file libtool libtool-libs  kernel-devel libjpeg libjpeg-devel libpng libpng-devel libpng10 libpng10-devel gd gd-devel freetype freetype-devel libxml2  autoconf libxml2-devel zlib zlib-devel glib2 glib2-devel bzip2 bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel krb5 krb5-devel libidn libidn-devel openssl openssl-devel vim-minimal nano fonts-chinese gettext gettext-devel ncurses-devel gmp-devel pspell-devel unzip libcap pcre-devel openssl-devel libxml2-devel  mysql-devel bzip2-devel libmcrypt-devel libpng-devel libjpeg-turbo-devel  net-snmp-devel openldap-devel libcurl-devel libc-client-devel libtidy-devel;
do yum  install $packages  -y ; done

mv -f /etc/yum.conf.lnmp /etc/yum.conf


############################
#Install Depend Package
#############################





echo "=========================install depend package end===================="


