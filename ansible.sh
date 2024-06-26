#!/bin/bash

# install ansible
sudo yum update -y
sudo yum install -y yum-utils
sudo yum install ansible -y

# install docker
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
#sudo docker run hello-world
sudo docker network create mongonetwork
sudo yum install python3 -y
sudo pip3 install docker
sudo pip3 install pymongo
sudo pip3 install requests
sudo pip3 install docker-py
ansible-galaxy collection install community.mongodb


# then install terraform // optional
#sudo yum install -y yum-utils
#sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
#sudo yum -y install terraform


# create case files & update configs
mkdir case-a
mkdir case-b
sudo bash -c 'echo "alias node1='\''docker exec -it node1 /bin/bash'\''" >> ~/.bashrc'
sudo bash -c 'echo "alias node2='\''docker exec -it node2 /bin/bash'\''" >> ~/.bashrc'
sudo bash -c 'echo "alias node3='\''docker exec -it node3 /bin/bash'\''" >> ~/.bashrc'
source ~/.bashrc
