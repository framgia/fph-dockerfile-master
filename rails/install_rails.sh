docker pull ruby:2.5.1
docker pull mysql:5.7
docker-compose run web rails new . --force --database=mysql --skip-bundle
docker-compose build

# docker-compose run web rake db:create
# docker-compose up





