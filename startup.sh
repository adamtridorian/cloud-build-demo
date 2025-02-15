#!/bin/bash
cd /home/adam_boonchaya/cloud-build-demo
sudo ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
sudo git config --global --add safe.directory /home/adam_boonchaya/cloud-build-demo
sudo git pull
sudo cp -r * /var/www/html
sudo rm -rf /var/www/html/.git
sudo chown -R www-data:www-data /var/www/html/*