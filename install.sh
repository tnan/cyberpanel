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
exe_time="$(($SECONDS / 3600)) hrs $((($SECONDS / 60) % 60)) min $(($SECONDS % 60)) sec"
echo "Done! Execution Time: $exe_time"
