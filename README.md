# Criando DEVOPS com Rancher e K8S localmente
## Requisitos
- Vagrant
- VirtualBox
- Git
- Docker

## Passo a passo

 - Acesse a pasta vagrant-rancher e execute o vagrant
```
cd vagrant-rancher
vagrant up
```
- Acesse rancher pelo endereço 192.168.50.11 e crie um novo cluster.
- No script de criação de cluster apresentado, copie o token e cs-checksum apresentado.
- Cole os respectivos valores nas variáveis dos arquivos provision.sh das pastas vagrant-k8s1, vagrant-k8s2 e vagrant-k8s3
```
TOKEN=XXXXXXXXXXXXXXXXXXXXXX
CHECKSUM=XXXXXXXXXXXXXXXXXXXX
```
- Acesse a pasta vagrant-k8s1 e execute o vagrant

```
cd vagrant-k8s1
vagrant up
```
- Acesse a pasta vagrant-k8s2 e execute o vagrant

```
cd vagrant-k8s2
vagrant up
```
- Acesse a pasta vagrant-k8s3 e execute o vagrant

```
cd vagrant-k8s3
vagrant up
```