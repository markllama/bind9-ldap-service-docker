#
#
#
FROM fedora:25
LABEL author="Mark Lamourine <markllama@gmail.com>"

RUN dnf -y install bind bind-dyndb-ldap python2-jinja2-cli.noarch ; \
    dnf -y clean all
RUN echo 'include "/var/named/dyndb-ldap/ldap.conf";' >> /etc/named.conf

ADD ldap.conf.j2 /ldap.conf.j2
ADD startup.sh /startup.sh

EXPOSE 53
#USER named
CMD /startup.sh

