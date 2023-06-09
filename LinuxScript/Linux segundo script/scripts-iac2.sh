#!bin/bash

echo "Atualizando o servidor"
apt-get update -y
apt-get upgrade -y

echo "instalando o apache"
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando arquivo zip da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main

echo "Copiando..."
cp -r * /var/www/html
