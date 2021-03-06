cd ~
wget https://github.com/usmannasir/cyberpanel/raw/stable/cyberpanel.sh
chmod +x cyberpanel.sh
printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | ./cyberpanel.sh
cd ~
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable docker
systemctl start docker
cd ~
wget --directory-prefix=/usr/local/csf/ https://raw.githubusercontent.com/tnan/cyberpanel/master/webmin/csf/csfwebmin.tgz
wget -P /etc/yum.repos.d/ https://raw.githubusercontent.com/tnan/cyberpanel/master/webmin/webmin.repo
wget https://download.webmin.com/jcameron-key.asc
rpm --import jcameron-key.asc
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty perl-Encode-Detect
yum install -y webmin
cd ~
yum install -y lsphp56-bcmath lsphp56-common lsphp56-dba lsphp56-enchant lsphp56-gd lsphp56-gmp lsphp56-imap lsphp56-intl lsphp56-ioncube-loader lsphp56-ldap lsphp56-mbstring lsphp56-mcrypt lsphp56-mysql lsphp56-odbc lsphp56-pdo lsphp56-pgsql lsphp56-process lsphp56-pspell lsphp56-recode lsphp56-snmp lsphp56-soap lsphp56-tidy lsphp56-xml lsphp56-xmlrpc lsphp56-debuginfo lsphp56-mysql56-debuginfo lsphp56-devel lsphp56-mysql56 lsphp56-mysqlnd lsphp56-opcache lsphp56-sqlite lsphp56-xcache lsphp56-xcache-admin lsphp56-pecl-imagick lsphp55-bcmath lsphp55-common lsphp55-dba lsphp55-enchant lsphp55-gd lsphp55-imap lsphp55-intl lsphp55-ioncube-loader lsphp55-ldap lsphp55-mbstring lsphp55-mcrypt lsphp55-mysql lsphp55-odbc lsphp55-pdo lsphp55-pear lsphp55-pgsql lsphp55-process lsphp55-pspell lsphp55-recode lsphp55-snmp lsphp55-soap lsphp55-tidy lsphp55-xml lsphp55-xmlrpc lsphp55-debuginfo lsphp55-mysql56-debuginfo lsphp55-lsphp53-devel lsphp55-mysqlnd lsphp55-opcache lsphp55-sqlite lsphp55-xcache lsphp55-xcache-admin lsphp56-pear lsphp54-bcmath lsphp54-common lsphp53-dba lsphp54-gd lsphp54-imap lsphp54-ioncube-loader lsphp54-ldap lsphp54-mbstring lsphp54-mcrypt lsphp54-mysql lsphp54-odbc lsphp54-pdo lsphp54-pear lsphp54-pecl-apc lsphp54-process lsphp54-pspell lsphp54-recode lsphp54-snmp lsphp54-soap lsphp54-tidy lsphp54-xml lsphp54-xmlrpc lsphp54-debuginfo lsphp54-mysql56-debuginfo lsphp54-lsphp53-devel lsphp54-mysql56 lsphp54-mysqlnd lsphp54-opcache lsphp54-pecl-apc-devel lsphp54-pecl-apc-panel lsphp54-sqlite lsphp54-xcache lsphp54-xcache-admin lsphp55-mysql56 lsphp53-bcmath lsphp53-common lsphp53-dba lsphp53-enchant lsphp53-gd lsphp53-imap lsphp53-intl lsphp53-ioncube-loader lsphp53-ldap lsphp53-mbstring lsphp53-mcrypt lsphp53-mysql lsphp53-odbc lsphp53-pdo lsphp53-pear lsphp53-pecl-apc lsphp53-pgsql lsphp53-process lsphp53-pspell lsphp53-recode lsphp53-snmp lsphp53-soap lsphp53-tidy lsphp53-xml lsphp53-xmlrpc lsphp53-debuginfo lsphp53-lsphp53-devel lsphp53-mysql56 lsphp53-mysqlnd lsphp53-opcache lsphp53-pecl-apc-devel lsphp53-pecl-apc-panel lsphp53-sqlite lsphp53-xcache lsphp53-xcache-admin lsphp54-enchant lsphp54-intl lsphp54-pgsql lsphp70-debuginfo lsphp70-pecl-igbinary-debuginfo lsphp70-pecl-mcrypt-debuginfo lsphp70-bcmath lsphp70-common lsphp70-dba lsphp70-devel lsphp70-enchant lsphp70-gd lsphp70-gmp lsphp70-imap lsphp70-intl lsphp70-json lsphp70-ldap lsphp70-mbstring lsphp70-mysqlnd lsphp70-odbc lsphp70-opcache lsphp70-pdo lsphp70-pear lsphp70-pecl-apcu lsphp70-pecl-apcu-devel lsphp70-pecl-apcu-panel lsphp70-pecl-igbinary lsphp70-pecl-igbinary-devel lsphp70-pecl-mcrypt lsphp70-pecl-memcache lsphp70-pecl-memcached lsphp70-pecl-msgpack lsphp70-pecl-msgpack-devel lsphp70-pecl-redis lsphp70-pgsql lsphp70-process lsphp70-pspell lsphp70-recode lsphp70-snmp lsphp70-soap lsphp70-tidy lsphp70-xml lsphp70-xmlrpc lsphp70-zip lsphp70-mcrypt lsphp70-dbg lsphp70-ioncube lsphp70-pecl-imagick lsphp71-debuginfo lsphp71-pecl-igbinary-debuginfo lsphp71-pecl-mcrypt-debuginfo lsphp71-bcmath lsphp71-common lsphp71-dba lsphp71-devel lsphp71-enchant lsphp71-gd lsphp71-gmp lsphp71-imap lsphp71-intl lsphp71-json lsphp71-ldap lsphp71-mbstring lsphp71-mysqlnd lsphp71-odbc lsphp71-opcache lsphp71-pdo lsphp71-pear lsphp71-pecl-apcu lsphp71-pecl-apcu-devel lsphp71-pecl-apcu-panel lsphp71-pecl-igbinary lsphp71-pecl-igbinary-devel lsphp71-pecl-mcrypt lsphp71-pecl-memcache lsphp71-pecl-memcached lsphp71-pecl-msgpack lsphp71-pecl-msgpack-devel lsphp71-pecl-redis lsphp71-pgsql lsphp71-process lsphp71-pspell lsphp71-recode lsphp71-snmp lsphp71-soap lsphp71-tidy lsphp71-xml lsphp71-xmlrpc lsphp71-zip lsphp71-mcrypt lsphp71-dbg lsphp71-ioncube lsphp71-pecl-imagick lsphp72-debuginfo lsphp72-pecl-igbinary-debuginfo lsphp72-pecl-mcrypt-debuginfo lsphp72-bcmath lsphp72-common lsphp72-dba lsphp72-devel lsphp72-enchant lsphp72-gd lsphp72-gmp lsphp72-imap lsphp72-intl lsphp72-json lsphp72-ldap lsphp72-mbstring lsphp72-mysqlnd lsphp72-odbc lsphp72-opcache lsphp72-pdo lsphp72-pear lsphp72-pecl-apcu lsphp72-pecl-apcu-devel lsphp72-pecl-apcu-panel lsphp72-pecl-igbinary lsphp72-pecl-igbinary-devel lsphp72-pecl-mcrypt lsphp72-pecl-memcache lsphp72-pecl-memcached lsphp72-pecl-msgpack lsphp72-pecl-msgpack-devel lsphp72-pecl-redis lsphp72-pgsql lsphp72-process lsphp72-pspell lsphp72-recode lsphp72-snmp lsphp72-soap lsphp72-tidy lsphp72-xml lsphp72-xmlrpc lsphp72-zip lsphp72-mcrypt lsphp72-dbg lsphp72-ioncube lsphp72-pecl-imagick lsphp73-debuginfo lsphp73-pecl-igbinary-debuginfo lsphp73-pecl-mcrypt-debuginfo lsphp73-bcmath lsphp73-common lsphp73-dba lsphp73-devel lsphp73-enchant lsphp73-gd lsphp73-gmp lsphp73-imap lsphp73-intl lsphp73-json lsphp73-ldap lsphp73-mbstring lsphp73-mysqlnd lsphp73-odbc lsphp73-opcache lsphp73-pdo lsphp73-pear lsphp73-pecl-apcu lsphp73-pecl-apcu-devel lsphp73-pecl-apcu-panel lsphp73-pecl-igbinary lsphp73-pecl-igbinary-devel lsphp73-pecl-mcrypt lsphp73-pecl-memcache lsphp73-pecl-memcached lsphp73-pecl-msgpack lsphp73-pecl-msgpack-devel lsphp73-pecl-redis lsphp73-pgsql lsphp73-process lsphp73-pspell lsphp73-recode lsphp73-snmp lsphp73-soap lsphp73-tidy lsphp73-xml lsphp73-xmlrpc lsphp73-zip lsphp73-mcrypt lsphp73-dbg lsphp73-ioncube lsphp73-pecl-imagick lsphp74-debuginfo lsphp74-pecl-igbinary-debuginfo lsphp74-pecl-mcrypt-debuginfo lsphp74-bcmath lsphp74-common lsphp74-dba lsphp74-devel lsphp74-enchant lsphp74-gd lsphp74-gmp lsphp74-imap lsphp74-intl lsphp74-json lsphp74-ldap lsphp74-mbstring lsphp74-mysqlnd lsphp74-odbc lsphp74-opcache lsphp74-pdo lsphp74-pear lsphp74-pecl-apcu lsphp74-pecl-apcu-devel lsphp74-pecl-apcu-panel lsphp74-pecl-igbinary lsphp74-pecl-igbinary-devel lsphp74-pecl-mcrypt lsphp74-pecl-memcache lsphp74-pecl-memcached lsphp74-pecl-msgpack lsphp74-pecl-msgpack-devel lsphp74-pecl-redis lsphp74-pgsql lsphp74-process lsphp74-pspell lsphp74-recode lsphp74-snmp lsphp74-soap lsphp74-tidy lsphp74-xml lsphp74-xmlrpc lsphp74-zip lsphp74-mcrypt lsphp74-dbg lsphp74-ioncube lsphp74-pecl-imagick --skip-broken
systemctl restart lsws
cd ~
sed -i 's#// ##g' /usr/local/CyberCP/public/phpmyadmin/config.inc.php
sed -i 's#pmapass#pmapass#g' /usr/local/CyberCP/public/phpmyadmin/config.inc.php
echo "" >> /usr/local/CyberCP/public/phpmyadmin/config.inc.php
echo "/* Hide information_schema */" >> /usr/local/CyberCP/public/phpmyadmin/config.inc.php
echo """$""cfg['Servers'][""$""i]['hide_db'] = 'information_schema';" >> /usr/local/CyberCP/public/phpmyadmin/config.inc.php
echo "if(""$""_GET['db'] == 'information_schema')exit;" >> /usr/local/CyberCP/public/phpmyadmin/config.inc.php
cd ~
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp53/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp53/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp53/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp53/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp53/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp53/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp54/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp54/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp54/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp54/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp54/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp54/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp55/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp55/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp55/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp55/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp55/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp55/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp56/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp56/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp56/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp56/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp56/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp56/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp70/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp70/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp70/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp70/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp70/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp70/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp71/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp71/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp71/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp71/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp71/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp71/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp72/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp72/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp72/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp72/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp72/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp72/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp73/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp73/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp73/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp73/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp73/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp73/etc/php.ini
sed -i 's#max_execution_time = 30#max_execution_time = 6000#g' /usr/local/lsws/lsphp74/etc/php.ini
sed -i 's#max_input_time = 60#max_input_time = 6000#g' /usr/local/lsws/lsphp74/etc/php.ini
sed -i 's#memory_limit = 128M#memory_limit = 1024M#g' /usr/local/lsws/lsphp74/etc/php.ini
sed -i 's#post_max_size = 8M#post_max_size = 10240M#g' /usr/local/lsws/lsphp74/etc/php.ini
sed -i 's#upload_max_filesize = 2M#upload_max_filesize = 10240M#g' /usr/local/lsws/lsphp74/etc/php.ini
sed -i 's#allow_url_include = Off#allow_url_include = On#g' /usr/local/lsws/lsphp74/etc/php.ini
cd ~
yum install spamassassin -y
echo "required_score 5" >> /etc/mail/spamassassin/local.cf
sed -i 's#smtp      inet  n       -       n       -       -       smtpd#smtp      inet  n       -       n       -       -       smtpd -o content_filter=spamassassin#g' /etc/postfix/master.cf
echo 'spamassassin unix - n n - - pipe flags=R user=spamd argv=/usr/bin/spamc -e /usr/sbin/sendmail -oi -f ${sender} ${recipient}' >> /etc/postfix/master.cf
groupadd spamd
useradd -g spamd -s /bin/false -d /var/log/spamassassin spamd
chown spamd:spamd /var/log/spamassassin
systemctl enable spamassassin
systemctl start spamassassin
systemctl restart postfix
printf 'yes\n' | sh /root/cyberpanel/CPScripts/mailscannerinstaller.sh
sed -i 's#Sign Clean Messages = yes#Sign Clean Messages = no#g' /etc/MailScanner/MailScanner.conf
printf 'yes\nyes\n' | cpan Authen::OATH
cd ~
exe_time="$(($SECONDS / 3600)) hrs $((($SECONDS / 60) % 60)) min $(($SECONDS % 60)) sec"
echo "Done! Execution Time: $exe_time"
