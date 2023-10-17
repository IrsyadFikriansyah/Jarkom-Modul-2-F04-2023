#!/bin/bash

echo 'nameserver 192.168.122.1  # IP Pandudewanata' > /etc/resolv.conf

bash /root/install-script.sh

# Setting DNS
cp /root/named.conf.options /etc/bind/named.conf.options
cp /root/named.conf.local /etc/bind/named.conf.local

# Setting DNS for arjuna
mkdir -p /etc/bind/arjuna/
cp /root/arjuna/arjuna.f04.com /etc/bind/arjuna/arjuna.f04.com

# Setting DNS for abimanyu
mkdir -p /etc/bind/abimanyu/
cp /root/abimanyu/abimanyu.f04.com /etc/bind/abimanyu/abimanyu.f04.com
cp /root/abimanyu/3.223.192.in-addr.arpa /etc/bind/abimanyu/3.223.192.in-addr.arpa

# Start services
service bind9 restart