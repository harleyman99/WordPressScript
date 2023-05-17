#/bin/bash

sudo apt install apache2 -y

read -p 'Name you first directory: ' dir1

sudo mkdir /var/www/$dir1/public_html

echo The new direcotry name $dir1 has been created.

read -p 'Name you second directory: ' dir2

sudo mkdir /var/www/$dir2/public_html

echo The new second directory named $dir2 has been created.

sudo chmod -R 777 /var/www

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$dir1.conf

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$dir2.conf

sudo nano /etc/apache2/sites-available/$dir1.conf

sudo nano /etc/apache2/sites-available/$dir2.conf

sudo a2dissite 000-default.conf

sudo a2ensite $dir1.conf

sudo a2ensite $dir2.conf

sudo systemctl restart apache2

sudo apt install mariadb-server -y

sudo mariadb

echo CREATE DATABASE $dir1;

echo GRANT All ON *.* TO 'student'@'localhost' INDENTIFIED BY 'parkway' WITH GRANT OPTION;

echo FLUSH PRIVILEGES;

echo EXIT;

SUDO apt-get install php -y

sudo apt install libacahe2-mod-php php-mysql -y



