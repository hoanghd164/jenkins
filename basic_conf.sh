#!/bin/bash
basic_conf(){
mkdir -p ~/.ssh/
cat > ~/.ssh/id_rsa << OEF
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAxwldSynNWYEj36iWSNvsLU821sIW5cpzOWySWlaR8KrREFjN
fCYQJWFRfzk+s+wrKSYGifvYxFvGEEsUMA80WEZEKQ1xY6s/lAoD1+Y5cJ5cbohN
RYYno1rEUDLqz2qeARUSDyKVRw3LVtU6/01NYcGJECwavNUkzP216OUP8HmYKZXF
WWLT9C6M1ftkUYaeI8RSn+cQr0UPDkJ92ERtRvsqQTpewNHSHpC7sS8lLDPR2nhX
ddUV1Fk8kII6gQAyH3nZ0329IUU7JwoW9RTwiD6aPkmtFQWlJSP56oHLlxr+wkk2
pOoxZ5fzxpi7icbej4g9FNDBQ2KLeQWdGhNqpQIBIwKCAQEAu6m+XM+kW7RGZSns
yFpTtbEWcrb/pXW9GOK14CW8zPjTvvSkfF5m/qw25asAmwM+oyPaR5WvH4m6vuez
8syBz5K1S0cwZUmw+UtFc8pwrAMGsVvxFapf4ymxx/V+TokYoe9LipzzJbyMhRIw
T8yKyeJcqNkghigMwUb7+Nf5Fe1S+Zu+X3opHYX6tE7rN1cH+9Kams6TAzYoviqh
zTnYTCmtRpQxR+pa+6CWWijrhUxzUJUpy7k2/iAsrykaUoWMBy9cmlD0CdXQJnEU
QnKQ/dn0M4GOwShks+D/kc7gbNrnGeuLukDyKbNAeddc/EbCSAFUqgIcSRWjdpJ9
QFnRCwKBgQDtd9jSb89CKy3qROKzawL081Sk339okyT715E3vchyHqxcqzoaf+I3
RBiIyLB8fB8gPAzLwwvasVxKI25vVGLlcx35205fb1d/0HWMv5LQc/Rs13n3oz5b
zICRgjuopLYIcN6h3PIk8sGjTmixcv6LABa+Xfgz5TTB+3WazcYZIQKBgQDWkbqs
4WdWqbCYqxKQpBAVFdYhDLNZw2LBNrKafuGKHVjnQ2MXvlvlBeUm1nJKC25G1JcK
CULaBfIYXfe3A6MNffNW92zmgLWggyRdcumV0MAa4puh6rt5sSFhGzRrOR+zoogI
V8KuhquXuObGf5SNQxL+IZB+4h6YPd1ebOZNBQKBgFgz1DDns2G4REESRZMZHlr7
S1MucSbXkWTbCg1jv3rYMWQ/mT0K7Z9/sVdgfBD65v1YIgKKRjtJMOhWTZcQtwTE
W5dRdOGeYlQLmWAp5hLpPYeDO+5D8pcgEn8wX01EfiBkb/L6S0+NXd2SJuLS8NSL
ASIi5yk34GVOxUggi2hrAoGAdHr+8CKXLwupAmt/G1G/lmrwlZkuKWoRCc08Yn9k
fi0wQwdTDOOuOn+LBnRp7a5vEIII2Y//uC8dBenePsd1xX7jLzXcCBn8MpBVkdCq
sGoB4rWHr6tP1FjXmx1lmUrlUuMz50WVkfFV1gVKE/wdcUGrOX/vWtKFoxpE+L7G
Kc8CgYEAsUB2iJ4m/i8GWMy/sgw1GzbWFahFGRTqxXv2FMlBP/8T2w9D7+yKHGy5
BkvPI0JR00Nb3HkYNnuADr1QDNkX33jbTnWzi4J9RGFsmHvbcwcsrl1DZvThZpmM
a6MV5Isezjp7oc9a9dJkY+4GUEgZbLqlE/7I5y+HMiG1cdJi434=
-----END RSA PRIVATE KEY-----
OEF
cat > ~/.ssh/authorized_keys<< OEF
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxwldSynNWYEj36iWSNvsLU821sIW5cpzOWySWlaR8KrREFjNfCYQJWFRfzk+s+wrKSYGifvYxFvGEEsUMA80WEZEKQ1xY6s/lAoD1+Y5cJ5cbohNRYYno1rEUDLqz2qeARUSDyKVRw3LVtU6/01NYcGJECwavNUkzP216OUP8HmYKZXFWWLT9C6M1ftkUYaeI8RSn+cQr0UPDkJ92ERtRvsqQTpewNHSHpC7sS8lLDPR2nhXddUV1Fk8kII6gQAyH3nZ0329IUU7JwoW9RTwiD6aPkmtFQWlJSP56oHLlxr+wkk2pOoxZ5fzxpi7icbej4g9FNDBQ2KLeQWdGhNqpQ==
OEF
chmod 600 ~/.ssh/id_rsa;chmod 600 ~/.ssh/authorized_keys;
# timedatectl set-timezone Asia/Ho_Chi_Minh
sudo apt install ntp ntpdate -y
# ntpdate -u -s 0.centos.pool.ntp.org 1.centos.pool.ntp.org
systemctl restart ntp && systemctl enable ntp && systemctl stop ufw && systemctl disable ufw && systemctl restart ssh && systemctl enable ssh
echo "script demo project 01"
echo "script demo project 02"
}
basic_conf
