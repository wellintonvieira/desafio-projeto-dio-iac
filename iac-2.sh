#!/bin/bash

echo "updating server..."
apt update -y && apt upgrade -y

echo "download apache..."
apt install unzip apache2 -y

echo "download aplication..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
tar main.zip
cd linux-site-dio-main
cp -R * /var/www/html/