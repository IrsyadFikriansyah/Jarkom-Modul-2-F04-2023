;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     arjuna.f04.com. root.arjuna.f04.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      arjuna.f04.com.
@       IN      A       192.223.3.2     ; IP Arjuna
www     IN		CNAME	    arjuna.f04.com.