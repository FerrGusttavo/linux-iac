#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usúarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usúarios..."

useradd carlos -m -c "Carlos Augusto" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_ADM
useradd maria -m -c "Maria das Graças" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_ADM
useradd joao -m -c "João da Silva" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_ADM

useradd debora -m -c "Débora Cavalcante" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Silva" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_VEN
useradd roberto -m -c "Roberto Lira" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_VEN

useradd josefina -m -c "Josefina Olinda" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_SEC
useradd amanda -m -c "Amanda Amida" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_SEC
useradd rogerio -m -c "Rogério Costa" -s /bin/bash -p $(echo "Senha123" | openssl passwd -1 -stdin) -G GRP_SEC

echo "Atribuindo permissões dos usúarios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Encerrado."


