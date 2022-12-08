#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
cat index.html  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
sudo mkdir /var/www/images
aws s3 cp https://${ver.env}-terraformlovers.s3.amazonaws.com/images/ /var/www/images --recursive