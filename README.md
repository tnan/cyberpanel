cd ~ && yum install screen -y && wget https://raw.githubusercontent.com/usmannasir/cyberpanel/v2.0.2-dev/cyberpanel.sh && screen -d -m printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | sh cyberpanel.sh 2>&1|tee cyberpanel_install.log


CentOS
Cyberpanel Only
wget https://github.com/usmannasir/cyberpanel/raw/stable/cyberpanel.sh && chmod +x cyberpanel.sh && printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | ./cyberpanel.sh 2>&1|tee cyberpanel_install.log

Cyberpanel + Docker
wget https://github.com/usmannasir/cyberpanel/raw/stable/cyberpanel.sh && chmod +x cyberpanel.sh && printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | ./cyberpanel.sh 2>&1|tee cyberpanel_install.log && yum install -y yum-utils device-mapper-persistent-data lvm2 && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && yum install -y docker-ce docker-ce-cli containerd.io && systemctl enable docker && systemctl start docker

Cyberpanel + Docker + Webmin
wget https://github.com/usmannasir/cyberpanel/raw/stable/cyberpanel.sh && chmod +x cyberpanel.sh && printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | ./cyberpanel.sh 2>&1|tee cyberpanel_install.log && yum install -y yum-utils device-mapper-persistent-data lvm2 && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && yum install -y docker-ce docker-ce-cli containerd.io && systemctl enable docker && systemctl start docker && wget --directory-prefix=/usr/local/csf/ https://github.com/tnan/cyberpanel/raw/master/csfwebmin.tgz && wget -P /etc/yum.repos.d/ https://github.com/tnan/cyberpanel/raw/master/webmin.repo && yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty perl-Encode-Detect && cd ~ && wget https://download.webmin.com/jcameron-key.asc && rpm --import jcameron-key.asc && yum install -y webmin

Ubuntu
printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh) 2>&1|tee cyberpanel_install.log
