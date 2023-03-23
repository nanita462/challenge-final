EC2: t2.micro
REGION: us-east-1 (virginia)
zona disponibilidad :us-east-1a
Ip : Enabled
AMI UBUNTU
Security-group: 80,443,5001,5000,5432,22
keyPair
chmod 400 keyPair

Linux/mac .pem
Windows .ppk
putty ***windows 

### Instalar en EC2
sudo apt-get update
sudo apt install -y curl git wget net-tools zip unzip docker.io 
docker --version
docker ps
sudo usermod -aG docker ubuntu
sudo systemctl enable docker
sudo systemctl status docker
sudo systemctl restart docker
sudo reboot


docker ps
docker pull hello-world
git --version
export DC_VERSION=$(curl -L -s -H 'Accept: application/json' https://github.com/docker/compose/releases/latest | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
sudo curl -L "https://github.com/docker/compose/releases/download/$DC_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

git clone https://github.com/roxsross/devops-in-tech.git
cd devops-in-tech/bootcamp-devops/voting-app-docker/
docker-compose up -d --build
docker ps


Amazon linux 

sudo yum update -y
sudo yum install docker git -y
sudo service docker enable
sudo service docker start
sudo usermod -a -G docker ec2-user 
DC_VERSION=$(curl -L -s -H 'Accept: application/json' https://github.com/docker/compose/releases/latest | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
sudo curl -L "https://github.com/docker/compose/releases/download/$DC_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo service docker restart