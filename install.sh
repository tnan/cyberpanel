wget https://github.com/usmannasir/cyberpanel/raw/stable/cyberpanel.sh
chmod +x cyberpanel.sh
printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | ./cyberpanel.sh
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable docker
systemctl start docker
wget --directory-prefix=/usr/local/csf/ https://github.com/tnan/cyberpanel/raw/master/webmin/csf/csfwebmin.tgz
wget -P /etc/yum.repos.d/ https://github.com/tnan/cyberpanel/raw/master/webmin/webmin.repo
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty perl-Encode-Detect
cd ~
wget https://download.webmin.com/jcameron-key.asc
rpm --import jcameron-key.asc
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty perl-Encode-Detect
yum install -y webmin
yum install spamassassin -y
wget https://github.com/tnan/cyberpanel/raw/master/spamassassin/local.cf -O /etc/mail/spamassassin/local.cf
wget https://github.com/tnan/cyberpanel/raw/master/postfix/master.cf -O /etc/postfix/master.cf
groupadd spamd
useradd -g spamd -s /bin/false -d /var/log/spamassassin spamd
chown spamd:spamd /var/log/spamassassin
systemctl enable spamassassin
systemctl start spamassassin
systemctl restart postfix
printf 'yes\n' | sh /root/cyberpanel/CPScripts/mailscannerinstaller.sh
cpan Authen::OATH
yum install -y lsphp70-debuginfo lsphp70-pecl-igbinary-debuginfo lsphp70-pecl-mcrypt-debuginfo lsphp70-bcmath lsphp70-common lsphp70-dba lsphp70-devel lsphp70-enchant lsphp70-gd lsphp70-gmp lsphp70-imap lsphp70-intl lsphp70-json lsphp70-ldap lsphp70-mbstring lsphp70-mysqlnd lsphp70-odbc lsphp70-opcache lsphp70-pdo lsphp70-pear lsphp70-pecl-apcu lsphp70-pecl-apcu-devel lsphp70-pecl-apcu-panel lsphp70-pecl-igbinary lsphp70-pecl-igbinary-devel lsphp70-pecl-mcrypt lsphp70-pecl-memcache lsphp70-pecl-memcached lsphp70-pecl-msgpack lsphp70-pecl-msgpack-devel lsphp70-pecl-redis lsphp70-pgsql lsphp70-process lsphp70-pspell lsphp70-recode lsphp70-snmp lsphp70-soap lsphp70-tidy lsphp70-xml lsphp70-xmlrpc lsphp70-zip lsphp70-mcrypt lsphp70-dbg lsphp70-ioncube lsphp70-pecl-imagick lsphp71-debuginfo lsphp71-pecl-igbinary-debuginfo lsphp71-pecl-mcrypt-debuginfo lsphp71-bcmath lsphp71-common lsphp71-dba lsphp71-devel lsphp71-enchant lsphp71-gd lsphp71-gmp lsphp71-imap lsphp71-intl lsphp71-json lsphp71-ldap lsphp71-mbstring lsphp71-mysqlnd lsphp71-odbc lsphp71-opcache lsphp71-pdo lsphp71-pear lsphp71-pecl-apcu lsphp71-pecl-apcu-devel lsphp71-pecl-apcu-panel lsphp71-pecl-igbinary lsphp71-pecl-igbinary-devel lsphp71-pecl-mcrypt lsphp71-pecl-memcache lsphp71-pecl-memcached lsphp71-pecl-msgpack lsphp71-pecl-msgpack-devel lsphp71-pecl-redis lsphp71-pgsql lsphp71-process lsphp71-pspell lsphp71-recode lsphp71-snmp lsphp71-soap lsphp71-tidy lsphp71-xml lsphp71-xmlrpc lsphp71-zip lsphp71-mcrypt lsphp71-dbg lsphp71-ioncube lsphp71-pecl-imagick lsphp72-debuginfo lsphp72-pecl-igbinary-debuginfo lsphp72-pecl-mcrypt-debuginfo lsphp72-bcmath lsphp72-common lsphp72-dba lsphp72-devel lsphp72-enchant lsphp72-gd lsphp72-gmp lsphp72-imap lsphp72-intl lsphp72-json lsphp72-ldap lsphp72-mbstring lsphp72-mysqlnd lsphp72-odbc lsphp72-opcache lsphp72-pdo lsphp72-pear lsphp72-pecl-apcu lsphp72-pecl-apcu-devel lsphp72-pecl-apcu-panel lsphp72-pecl-igbinary lsphp72-pecl-igbinary-devel lsphp72-pecl-mcrypt lsphp72-pecl-memcache lsphp72-pecl-memcached lsphp72-pecl-msgpack lsphp72-pecl-msgpack-devel lsphp72-pecl-redis lsphp72-pgsql lsphp72-process lsphp72-pspell lsphp72-recode lsphp72-snmp lsphp72-soap lsphp72-tidy lsphp72-xml lsphp72-xmlrpc lsphp72-zip lsphp72-mcrypt lsphp72-dbg lsphp72-ioncube lsphp72-pecl-imagick lsphp73-debuginfo lsphp73-pecl-igbinary-debuginfo lsphp73-pecl-mcrypt-debuginfo lsphp73-bcmath lsphp73-common lsphp73-dba lsphp73-devel lsphp73-enchant lsphp73-gd lsphp73-gmp lsphp73-imap lsphp73-intl lsphp73-json lsphp73-ldap lsphp73-mbstring lsphp73-mysqlnd lsphp73-odbc lsphp73-opcache lsphp73-pdo lsphp73-pear lsphp73-pecl-apcu lsphp73-pecl-apcu-devel lsphp73-pecl-apcu-panel lsphp73-pecl-igbinary lsphp73-pecl-igbinary-devel lsphp73-pecl-mcrypt lsphp73-pecl-memcache lsphp73-pecl-memcached lsphp73-pecl-msgpack lsphp73-pecl-msgpack-devel lsphp73-pecl-redis lsphp73-pgsql lsphp73-process lsphp73-pspell lsphp73-recode lsphp73-snmp lsphp73-soap lsphp73-tidy lsphp73-xml lsphp73-xmlrpc lsphp73-zip lsphp73-mcrypt lsphp73-dbg lsphp73-ioncube lsphp73-pecl-imagick lsphp74-debuginfo lsphp74-pecl-igbinary-debuginfo lsphp74-pecl-mcrypt-debuginfo lsphp74-bcmath lsphp74-common lsphp74-dba lsphp74-devel lsphp74-enchant lsphp74-gd lsphp74-gmp lsphp74-imap lsphp74-intl lsphp74-json lsphp74-ldap lsphp74-mbstring lsphp74-mysqlnd lsphp74-odbc lsphp74-opcache lsphp74-pdo lsphp74-pear lsphp74-pecl-apcu lsphp74-pecl-apcu-devel lsphp74-pecl-apcu-panel lsphp74-pecl-igbinary lsphp74-pecl-igbinary-devel lsphp74-pecl-mcrypt lsphp74-pecl-memcache lsphp74-pecl-memcached lsphp74-pecl-msgpack lsphp74-pecl-msgpack-devel lsphp74-pecl-redis lsphp74-pgsql lsphp74-process lsphp74-pspell lsphp74-recode lsphp74-snmp lsphp74-soap lsphp74-tidy lsphp74-xml lsphp74-xmlrpc lsphp74-zip lsphp74-mcrypt lsphp74-dbg lsphp74-ioncube lsphp74-pecl-imagick --skip-broken
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp53/php.ini -O /usr/local/lsws/lsphp53/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp54/php.ini -O /usr/local/lsws/lsphp54/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp55/php.ini -O /usr/local/lsws/lsphp55/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp56/php.ini -O /usr/local/lsws/lsphp56/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp70/php.ini -O /usr/local/lsws/lsphp70/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp71/php.ini -O /usr/local/lsws/lsphp71/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp72/php.ini -O /usr/local/lsws/lsphp72/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp73/php.ini -O /usr/local/lsws/lsphp73/etc/php.ini
wget https://github.com/tnan/cyberpanel/raw/master/lsws/lsphp74/php.ini -O /usr/local/lsws/lsphp74/etc/php.ini
systemctl restart lsws
