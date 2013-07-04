#!/bin/bash

echo "Installing uglifyjs as administrator."
sudo npm install -g uglifyjs

echo "Your MySQL root password is required to create the scrollback user and database."
echo "It will be discarded when installation is complete."
read -s -p "Your MySQL root password: " rootpass
echo ""

mysql -uroot -p$rootpass < ./database.sql
mysql -uscrollback -pscrollback scrollback < ./tables.sql
