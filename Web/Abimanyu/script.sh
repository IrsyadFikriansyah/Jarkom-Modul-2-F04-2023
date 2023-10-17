#!/bin/bash

echo 'nameserver 192.223.2.3 # IP Werkudara' > /etc/resolv.conf
echo 'nameserver 192.223.2.2 # IP Yudhistira' >> /etc/resolv.conf

bash /root/install-script.sh

# Configure Web using nginx
rm -rf /etc/nginx/sites-enabled/default

cp /root/arjuna /etc/nginx/sites-available/arjuna
ln -sf /etc/nginx/sites-available/arjuna /etc/nginx/sites-enabled

mkdir -p /var/www/arjuna
cp /root/index.php /var/www/arjuna/index.php

# Configure abimanyu.f04.com using apache2
cp -r /root/abimanyu.f04 /var/www/
cp /root/abimanyu.f04.com.conf /etc/apache2/sites-available/abimanyu.f04.com.conf
a2ensite abimanyu.f04.com

# Configure parikesit.abimanyu.f04.com using apache2
cp -r /root/parikesit.abimanyu.f04 /var/www/
cp /root/parikesit.abimanyu.f04.com.conf /etc/apache2/sites-available/parikesit.abimanyu.f04.com.conf
a2ensite parikesit.abimanyu.f04.com

# Configure rjp.baratayuda.abimanyu.f04.com using apache2
cp -r /root/rjp.baratayuda.abimanyu.f04 /var/www/
cp /root/rjp.baratayuda.abimanyu.f04.com.conf /etc/apache2/sites-available/rjp.baratayuda.abimanyu.f04.com.conf
a2ensite rjp.baratayuda.abimanyu.f04.com

# 18
cp /root/ports.conf /etc/apache2/ports.conf

# 19
cp /root/abimanyu-redirect.conf /etc/apache2/sites-available/abimanyu-redirect.conf

# Configure htcaccess
a2enmod rewrite
cp /root/.htaccess /var/www/abimanyu.f04/.htaccess

service apache2 restart
service nginx restart
service php7.2-fpm start
