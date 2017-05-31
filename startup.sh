#!/bin/bash
#

jinja2-2.7 ldap.conf.j2 - <<EOF >/var/named/dyndb-ldap/ldap.conf
zone: "${ZONE}"
ldap_server: "${LDAP_SERVER}"
dns_dn: "${DNS_DN}"
EOF

rndc-confgen -a

exec /usr/sbin/named -g -c /etc/named.conf
