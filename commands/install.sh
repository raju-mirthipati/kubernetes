#!/bin/bash


echo "docker install"
sudo apt-get update
sudo apt install docker.io -y
sudo snap install docker
docker --version

echo "installing git"
sudo apt update
sudo apt install git
git --version

echo "install aws-cli v2"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
apt install -y unzip
sudo apt-get install unzip -y
unzip awscliv2.zip
sudo ./aws/install
aws --version

echo "install eksctl"
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

echo "install kubectl"
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.24.10/2023-01-30/bin/linux/amd64/kubectl
sudo mv kubectl /usr/local/bin/
chmod +x /usr/local/bin/kubectl
kubectl version --short --client




