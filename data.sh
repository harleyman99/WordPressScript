sudo mysql -e "CREATE DATABASE IF NOT EXISTS test1"

sudo mysql -e "GRANT All ON *.* TO 'student'@'localhost' IDENTIFIED BY 'parkway' WITH GRANT OPTION"

sudo mysql -e "FLUSH PRIVILEGES"