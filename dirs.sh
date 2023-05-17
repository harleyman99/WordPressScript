read -p 'Name you first directory: ' dir1

sudo mkdir /var/www/$dir1

sudo mkdir /var/www/$dir1/public_html

echo The new direcotry name $dir1 has been created.

read -p 'Name you second directory: ' dir2

sudo mkdir /var/www/$dir2

sudo mydir /var/www/$dir2/public_html

echo The new second directory named $dir2 has been created.

sudo chmod -R 777 /var/www