#!/bin/bash


# Apache
yum install -y httpd httpd-devel httpd-tools

service httpd stop

rm -rf /var/www/html

ln -s /vagrant /var/www/html

service httpd start

yum install -y php php-clie php-common php-devel php-mysql

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/lanroomjohn/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/lanroomjohn/vagrant/master/files/info.php

service httpd restart

