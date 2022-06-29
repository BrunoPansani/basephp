## Base PHP Small App

This project shows a simple PHP app structure prepared to be developed using docker and deployed to Heroku. 

### First Steps
1. Copy `.env.example` to `.env` and change the APP_NAME
1. Edit the `composer.json` file to define your project name, author, namespace, dependencies, etc
1. Run `docker-composer up -d` to start the dev environment
1. Run `docker exec -ti app-name-php sh` replacing app-name with the name defined in the `.env` file to access the docker container
1. Inside the container, run `composer install` to download the dependencies and install composer

### Running tests
This package provides PHPUnit installed by default. Tests can be developed inside `test/`. It's usual to divide this folder between `unit` and `integration` subfolders but that's totally up to you.

1. Run `docker-compose up -d` to start the dev environment
1. Run `docker exec -ti app-name-php sh` to access the container
1. Run `./vendor/bin/phpunit --bootstrap vendor/autoload.php test`


