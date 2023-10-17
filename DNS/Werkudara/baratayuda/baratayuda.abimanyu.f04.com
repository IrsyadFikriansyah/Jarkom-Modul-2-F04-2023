;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     baratayuda.abimanyu.f04.com. root.baratayuda.abimanyu.f04.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@           IN      NS      baratayuda.abimanyu.f04.com.
@           IN      A       192.223.3.4 ; IP Abimanyu
www         IN      CNAME   baratayuda.abimanyu.f04.com.
rjp         IN      A       192.223.3.4 ; IP Abimanyu
www.rjp     IN      CNAME   rjp.baratayuda.abimanyu.f04.com.
