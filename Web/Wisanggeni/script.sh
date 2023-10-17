#!/bin/bash

echo 'nameserver 192.223.2.3 # IP Werkudara' > /etc/resolv.conf
echo 'nameserver 192.223.2.2 # IP Yudhistira' >> /etc/resolv.conf

bash /root/install-script.sh

rm -rf /etc/nginx/sites-enabled/default

cp /root/arjuna /etc/nginx/sites-available/arjuna
ln -sf /etc/nginx/sites-available/arjuna /etc/nginx/sites-enabled

mkdir -p /var/www/arjuna
cp /root/index.php /var/www/arjuna/index.php

service nginx restart
service php7.2-fpm start
