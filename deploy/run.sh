#! /bin/bash

echo "Deploying files..."
scp -i ~/.ssh/id_rsa_circleci fun.html index.html circleci@juliuscebreros.com:/var/www/html
scp -i ~/.ssh/id_rsa_circleci -r styles scripts circleci@juliuscebreros.com:/var/www/html

# TODO: add a timestamp to display deploy time

echo "Done!"