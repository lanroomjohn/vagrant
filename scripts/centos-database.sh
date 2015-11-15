#!/bin/bash
yum install -y mysql mysql-server mysql-devel

service mysqld start

mysql -u root -e "SHOW DATABASES";

