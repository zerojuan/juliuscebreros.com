#! /bin/bash

echo "Deploying files..."
scp -oStrictHostKeyChecking=no -i ~/.ssh/id_rsa_circleci fun.html index.html circleci@juliuscebreros.com:/var/www/html
scp -oStrictHostKeyChecking=no -i ~/.ssh/id_rsa_circleci -r styles images scripts circleci@juliuscebreros.com:/var/www/html

# TODO: add a timestamp to display deploy time

echo "Done!"