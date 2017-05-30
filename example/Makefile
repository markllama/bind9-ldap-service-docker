#
# Demonstrate the command to convert a zone to ldif
#

example.com.ldif: dns_root.ldif
	cp dns_root.ldif $@
	python ../bin/zone2dyndb-ldif.py example.com.db example.com cn=dns,dc=example,dc=com >> $@
