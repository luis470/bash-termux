apt update
apt upgrade -y
pkg install wget
pkg install figlet
apt-get install python2 curl
curl -L https://git.io/vpZZb --output sqlmap_1.2.4-1_termux.deb
wget https://github.com/manymous/termux-sqlmap/blob/master/sqlmap_1.2.4-1_termux.deb
dpkg -i sqlmap_1.2.4-1_termux.deb
rm sqlmap_1.2.4-1_termux.deb
wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
cd
pkg install hydra
apt install git python python2 curl proot figlet -y
cd $HOME
git clone http://github.com/evait-security/weeman
cp -rf weeman $PREFIX/share
rm -rf weeman
cd $HOME
wget https://raw.githubusercontent.com/HackZonE404/SetupWeeman/master/weeman
wget https://raw.githubusercontent.com/HackZonE404/SetupWeeman/master/uninstallweeman
chmod +x *
cp -rf weeman $PREFIX/bin/
cp -rf uninstallweeman $PREFIX/bin
cd $HOME
rm -rf weeman
rm -rf uninstallweeman
cd
pkg unstable-repo
https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh
cd .. && cd usr && cd etc
rm bash.bashrc
wget https://github.com/luis470/bash-termux/blob/master/bash.bashrc
cd
pkg install nano
sh install.sh
