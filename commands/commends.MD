we configure EKSCTL cluster in aws with following commends
-> 1st we install aws.cli v2
-> 2nd we install EKSCTL
-> 3rd we install kuberctl 
---
#!/bin/bash
echo "install aws-cli v2"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install -y unzip
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
---
this is shellscript to install AWS cli and eksctl and kubectl
- after that we must configure AWS cli and enter the 
  -- access key 
  -- secret key 
EKSCTL commends works with aws commend line interface
one cluster means one master and multipule nodes 
- we write a confguration file in YAML formet with name of "eksctl.config.yaml"


kubectl is a commend line to intract with kubernetes server
-- kubectl get nodes [to get the nodes in the cluster]

pods vs containers
------------------
contaners - we called in docker and is just 1
pod - we called in kubernetes but one pod have multipule contaners 

-- kubectl get pods [is nothing but ]

NAMESPACE"
----------
namespace is logical icolation of our projects inside kubernetes
- kubectl get namespaces [to get namespaces]
- kubectl create -f namespaces.yml



