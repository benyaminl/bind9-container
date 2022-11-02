$TTL 1D

example.com.   IN NS dns1.example.com.
example.com.   IN NS dns2.example.com.

@   IN   A  10.0.1.1

dns1 IN  A  10.0.1.3
dns2 IN  A  10.0.1.4

IN  NS  dns1.example.com.
IN  NS  dns2.example.com.

server1  IN  A  10.0.1.3

example.com.    IN	SOA   dns1.example.com. dns2.example.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;


