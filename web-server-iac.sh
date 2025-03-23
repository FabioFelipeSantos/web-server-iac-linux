#!/bin/bash
echo "Provisionamento de um servidor web no Linux com Apache"

# Atualizar o servidor
echo "Atualizando o sistema"
apt update -y
apt upgrade -y

# Instalando o Apache
echo "Instalando o Apache"
apt install apache2 -y

# Instalando o unzip
echo "Instalando o unzip"
apt install unzip -y

# Baixando o arquivo do site
echo "Fazendo o download do projeto a ser fornecido"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando arquivos do projeto para o diretório padrão do Apache"
unzip main.zip
cp -rv linux-site-dio-main/* /var/www/html
