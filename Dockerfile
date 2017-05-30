#
#
#
FROM fedora:25

LABEL author="Mark Lamourine <markllama@gmail.com>"

RUN dnf -y install bind bind-dyndb-ldap python2-jinja2-cli.noarch ; \
    dnf -y clean all

ADD ldap.conf.j2 /ldap.conf.j2
ADD startup.sh /startup.sh

CMD /startup.sh

