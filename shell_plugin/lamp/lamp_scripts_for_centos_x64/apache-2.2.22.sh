#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi

#检测系统是否有www用户，如果没有则添加该用户，如果有则不做处理
id  www
[  `echo $?`  ==  0  ]  ||  groupadd www ; useradd -s /sbin/nologin -g www www

cd ./packages
tar zxvf httpd-2.2.22.tar.gz
cd httpd-2.2.22/
./configure --prefix=/usr/local/apache --enable-so  --enable-rewrite
make && make install

rm -rf httpd-2.2.22
#回到根目录
cd  ../../

\cp   -rpv   conf/httpd.conf  /usr/local/apache/conf/httpd.conf


mkdir -p /usr/local/apache/conf/vhost









