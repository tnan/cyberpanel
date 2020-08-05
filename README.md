cd ~ && yum install screen -y && wget https://raw.githubusercontent.com/usmannasir/cyberpanel/v2.0.2-dev/cyberpanel.sh && screen -d -m printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | sh cyberpanel.sh 2>&1|tee cyberpanel_install.log

wget https://github.com/usmannasir/cyberpanel/raw/stable/cyberpanel.sh && chmod +x cyberpanel.sh && printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | ./cyberpanel.sh 2>&1|tee cyberpanel_install.log

printf '1\n1\nY\nn\n\n\nd\nY\nY\nYes\n' | sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh) 2>&1|tee cyberpanel_install.log
