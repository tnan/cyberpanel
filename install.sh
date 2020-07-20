cd ~
wget https://raw.githubusercontent.com/usmannasir/cyberpanel/v2.0.2-dev/cyberpanel.sh
printf '1\n1\nY\nn\n2.0.2-dev\nd\nY\nY\nYes\n' | sh cyberpanel.sh 2>&1|tee cyberpanel_install.log
