#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt update;
apt dist-upgrade -y;
apt install nodejs -y;
apt install mongodb -y;
apt install apache2 -y;
systemctl enable mongodb;
systemctl start mongodb;
systemctl disable apache2;
systemctl start apache2;
ufw allow 'Apache';
git clone https://github.com/GAO23/CSE_356.git;
cd CSE_356;
cd 'HW1 & HW0';
cp apache_reverse_proxy.conf /etc/apache2/sites-available/;
a2enmod proxy;
a2enmod proxy_http;
a2enmod proxy_ajp;
a2enmod rewrite;
a2enmod deflate;
a2enmod headers;
a2enmod proxy_balancer;
a2enmod proxy_connect;
a2enmod proxy_html;
a2ensite apache_reverse_proxy.conf;
a2dissite 000-default.conf;
systemctl restart apache2;
cd ..;
cd Twitter_Clone/Back_End;
apt-get install postfix -y; # for mailing verification services 
apt install redis-server -y; # cuz it is better than memecache

