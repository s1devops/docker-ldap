#!/bin/bash

# "/usr/sbin/slapd", "-d", "0", "-F", "/etc/ldap/slapd.d"
set -e

exec /usr/sbin/slapd -d 0 -F /etc/ldap/slapd.d "${@}"
