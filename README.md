## Base PHP Small App

This project shows a simple PHP app structure prepared to be developed using docker and deployed to Heroku. 

### Development
1. Copy `.env.example` to `.env` and change the APP_NAME
1. Run `docker-composer up -d` to start the dev environment
1. Run `docker exec -ti app-name-php sh` replacing app-name with the name defined in the `.env` file to access the docker container
1. Inside the container, run `composer init` and follow the steps to generate your composer config
