FROM debian:jessie

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y slapd ldap-utils libsasl2-modules-gssapi-mit -qq && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#ADD start_slapd.sh /usr/local/bin/start_slapd
#RUN mkdir /var/run/ldap

EXPOSE 389

#ENTRYPOINT ["/usr/local/bin/start_slapd", "-h ldapi:/// ldap:///"]

#CMD []
