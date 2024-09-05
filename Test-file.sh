#!/bin/bash
echo 'Start Deployement'
sudo systemctl start nginx
sudo systemctl status nginx
sudo systemctl restart nginx
git clone https://github.com/shoaibawan1/Test-file.git
cd Test-file
sudo cp -r * /var/www/html
echo 'Deployment Complete'
