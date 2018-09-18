#!/bin/sh

# Install docker for mac 
# https://store.docker.com/

# Install mysql 
docker pull mysql:5.7
# Install wordpress
docker pull wordpress

# Run mysql image
docker run --name framgia-mysql -e MYSQL_ROOT_PASSWORD=framgia-pw -d mysql

# Run wordpress image
docker run --name framgia-wordpress --link framgia-mysql:mysql -d -p 8080:80 wordpress

# Access browser
# http://localhost:8080/
