;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     abimanyu.f04.com. root.abimanyu.f04.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@               IN      NS      abimanyu.f04.com.
@               IN      A       192.223.3.4     ; IP Abimanyu
www             IN      CNAME   abimanyu.f04.com.
parikesit       IN      A       192.223.3.4     ; IP Abimanyu
ns1             IN      A       192.223.2.3     ; IP Werkudara
baratayuda      IN      NS      ns1
