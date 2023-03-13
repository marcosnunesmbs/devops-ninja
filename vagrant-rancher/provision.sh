#!/bin/bash

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

#sobe um container rancher single node
sudo docker run -d --name rancher --restart=unless-stopped -v /opt/rancher:/var/lib/rancher  -p 80:80 -p 443:443 rancher/rancher:v2.4.3
