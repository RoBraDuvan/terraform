#!/bin/bash

# Actualizar los paquetes del sistema
sudo apt update

# Instalar dependencias necesarias para añadir repositorios vía HTTPS
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Añadir la clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Añadir el repositorio de Docker al sistema
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Actualizar nuevamente los paquetes del sistema para incluir los del repositorio de Docker
sudo apt update

# Instalar Docker
sudo apt install -y docker-ce

# Verificar que Docker se haya instalado correctamente mostrando la versión
sudo docker --version

# Instalar Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Dar permisos de ejecución al binario de Docker Compose
sudo chmod +x /usr/local/bin/docker-compose

# Verificar que Docker Compose se haya instalado correctamente mostrando la versión
docker-compose --version
