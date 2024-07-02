#!/bin/bash
cd /home/adam_boonchaya/cloud-build-demo
git pull
cp -r * /var/www/html
rm -rf /var/www/html/.git
chown -R www-data:www-data /var/www/html/*