cd ~
yum install -y screen
wget https://github.com/tnan/cyberpanel/raw/master/preinstall.sh
chmod +x preinstall.sh
screen -d -m sh /root/preinstall.sh
