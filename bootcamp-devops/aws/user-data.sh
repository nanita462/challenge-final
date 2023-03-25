#!/bin/bash
#actualizar #estaticos nginx /usr/share/nginx/html/
#var
sudo yum update -y
sudo yum install git nginx -y 
sudo systemctl enable nginx
sudo systemctl start nginx
sudo rm /usr/share/nginx/html/index.html
git clone https://github.com/roxsross/devops-in-tech.git
sudo mv devops-in-tech/bootcamp-devops/aws/launch/* /usr/share/nginx/html
sudo systemctl nginx restart


