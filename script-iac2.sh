#!/bin/bash

echo "Atualizando servidor......."
echo "Instalando programas......."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

cd /temp

echo "Baixando arquivos da IaC..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd /linux-site-dio-main

echo "Copiando arquivos da IaC..."
cp -R * /var/www/html/
