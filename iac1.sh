#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."

useradd mariah -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_ADM
useradd leona -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_ADM
useradd deborah -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_ADM

useradd dean -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_VEN
useradd leila -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_VEN
useradd cathy -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_VEN

useradd chanel -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_SEC
useradd indina -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_SEC
useradd jorge -m -s /bin/bash -p $(openssl passwd -crypt SW145) -G GRP_SEC

echo "Specifying permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven 
chmod 770 /sec
chmod 777 /public

echo "Finished..."
