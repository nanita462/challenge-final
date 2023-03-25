#!/bin/bash
#actualizar #estaticos nginx /usr/share/nginx/html/
#var
IP=$(curl -4 icanhazip.com)
SSLIP="$IP.sslip.io"
##Package
sudo apt update -y
sudo apt install git nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
sudo mkdir -p /var/www/web/html
sudo chown -R $USER:$USER /var/www/web/html
sudo chmod -R 755 /var/www/web
git clone https://github.com/roxsross/devops-in-tech.git
sudo mv devops-in-tech/bootcamp-devops/aws/launch/* /var/www/web/html
cat > web <<EOF
server {
        listen 80;
        listen [::]:80;
        root /var/www/web/html;
        index index.html index.htm index.nginx-debian.html;
        server_name $SSLIP www.$SSLIP;
        location / {
                #try_files $uri $uri/ =404;
        }
}
EOF
sudo mv web /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/web /etc/nginx/sites-enabled/
sudo systemctl restart nginx
## Install Certificados
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx --register-unsafely-without-email --agree-tos -d "${SSLIP}" --cert-name web

#Para acceder 443
#https://IP_PUBLICA.sslip.io 
#Para acceder 80
#http://IP_PUBLICA.sslip.io 