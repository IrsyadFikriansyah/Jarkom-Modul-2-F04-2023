#!/bin/bash
  
echo 'nameserver 192.223.2.3 # IP Werkudara' > /etc/resolv.conf
echo 'nameserver 192.223.2.2 # IP Yudhistira' >> /etc/resolv.conf

bash /root/install-script.sh