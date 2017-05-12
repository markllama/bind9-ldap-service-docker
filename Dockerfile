#
#
#
FROM fedora:25

LABEL author="Mark Lamourine <markllama@gmail.com>"

RUN dnf -y install bind bind-dyndb-ldap ; dnf -y clean all