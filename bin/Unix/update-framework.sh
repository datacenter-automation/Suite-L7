#!/usr/bin/env bash

printf "Starting framework update.\n\n"

printf "Running 'composer update'...\n"
composer update

printf "Running 'npm update'...\n"
npm update

printf "Running 'npm audit check'...\n"
npm audit check

printf "Done updating framework.\n\n"

printf "Please download the app, bootstrap, public, and storage directories.\n"
printf "Next, please download composer.*, _ide_helper*, ngrok-tunnels.json, package*, tree.txt, and yarn.lock files.\n"
printf "Lastly, if you've installed a new package and have published a config file, database file, seeder file, or package resources--\n"
printf "-- please download the config, database, public, or resources directories as needed.\n\n\n"
