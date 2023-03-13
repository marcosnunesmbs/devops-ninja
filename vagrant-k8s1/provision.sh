#!/bin/bash

#variáveis
TOKEN=xj4vbv579x6t9lwsbvrbf69q845wqsb6wmp9ds4hhx5bhsc6bhts8n
CHECKSUM=815e9571fc1be1d9d798a01f1dd5b07191bc7330c16e7b665f384fb2dbc81461
NAME=k8s1
SERVER=192.168.50.11

# Atualiza os pacotes e instala dependências
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Adiciona chave GPG oficial do Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adiciona repositório oficial do Docker ao sistema
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Atualiza novamente os pacotes e instala o Docker
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Adiciona o usuário vagrant ao grupo docker
sudo usermod -aG docker vagrant

#
sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.4.3 --server https://${SERVER} --token ${TOKEN} --ca-checksum ${CHECKSUM} --node-name ${NAME} --etcd --controlplane --worker
