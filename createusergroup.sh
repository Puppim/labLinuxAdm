#!/bin/bash

echo "Inicio do script"

echo "Criando as pastas";
mkdir publico adm ven sec

echo "Criando os grupos de usuarios"
groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando os usuarios"
for newuser in {carlos,maria,joao,debora,sebastiana,roberto,josefina,amanda,rogerio};
do useradd $newuser -m -c "$newuser" -s /bin/bash -p $(openssl passwd  $newuser) -G GRP_ADM;
done;

echo "Adicionado os usuarios aos grupos"
for adms in {carlos,maria,joao};
do usermod -G GRP_ADM $adms;
done;
for vens in {debora,sebastiana,roberto};
do usermod -G GRP_VEN $vens;
done;
for secs in {josefina,amanda,rogerio};
do usermod -G GRP_SEC $secs;
done;

echo "Adicionado as pastas aos grupos"
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Alterando as permisoes das pastas"
chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Fim do script"
