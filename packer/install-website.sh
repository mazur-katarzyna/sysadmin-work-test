#!/bin/sh 
sudo apt update
sudo apt upgrade
sudo apt install -y apache2
sudo echo "<html><body><h1>Hello SysAdmins!</h1></body></html>" >> /var/www/html/index.html

