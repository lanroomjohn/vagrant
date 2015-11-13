#!/bin/bash


#Update CentOS with patches
yum update -y --exclude=kernel
# tools
yum install -y git unzip screen
# Apache
yum install -y httpd httpd-devel httpd-tools

service httpd stop

rm -rf /var/www/html

ln -s /vagrant /var/www/html

service httpd start

yum install -y php php-clie php-common php-devel php-mysql

yum install -y mysql mysql-server mysql-devel

service mysqld start

mysql -u root -e "SHOW DATABASES";


service httpd restart

