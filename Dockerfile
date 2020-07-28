FROM easysoft/zentao:12.3.3

# install ldap module
ADD ldap/ /tmp/ldap/
RUN rsync -r /tmp/ldap/module/ /www/zentaopms/module/