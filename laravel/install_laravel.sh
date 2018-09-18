#!/bin/sh

# DL images
docker pull sshun/docker_laradcok:ver1.0
docker pull sshun/laradock_mysql:ver1.1
docker pull sshun/laradock_nginx:ver1.0
docker pull sshun/laradock_php_fpm:ver1.0
docker pull sshun/docker_bind_laravel:ver1.0

# Clone laradock 
git clone https://github.com/LaraDock/laradock.git
cd laradock

# Copy .env 
cp env-example .env
# Build laradock 
docker-compose up -d workspace

# Check if laradock is running 
# Check if there is laradock_workspace_1
docker-compose ps

# Connnect to container
docker exec -it laradock_workspace_1 /bin/bash

# Add user
# adduser test

# Install laravel 
# composer create-project laravel/laravel ProjectName "5.6.*"

# Exit contanier 
# exit

# Stop laradock_workspace_1 
# docker-compose stop

