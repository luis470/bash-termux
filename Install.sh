atualizar='\033[1;32m'
echo "Atualizando repositório..."
apt update && clear && apt  upgrade -y
clear
apt install -y wget
clear
pkg install figlet
clear
figlet Installer
echo "Criador por OFG-ZERO"
echo
echo "Deseja instalar o Ngrok? [Y]"
read opcao
echo
echo "Downloading ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Arquitetura desconhecida"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo
echo "Exemplo de comando (ngrok http 80\nOu ngrok para ajuda)"
cd
echo
echo
echo
figlet Weeman
echo 'Setting Up Weeman On Termux'
echo 'Sit Back And Relax'
echo
echo "Deseja instalar weeman [Y]"
read opcao
echo
echo
apt update
clear
apt upgrade -y
clear
apt install git python python2 curl proot figlet -y
clear
cd $HOME
git clone http://github.com/evait-security/weeman
clear
cp -rf weeman $PREFIX/share
clear
rm -rf weeman
cd $HOME
wget https://raw.githubusercontent.com/HackZonE404/SetupWeeman/master/weeman
clear
wget https://raw.githubusercontent.com/HackZonE404/SetupWeeman/master/uninstallweeman
clear
chmod +x *
cp -rf weeman $PREFIX/bin/
cp -rf uninstallweeman $PREFIX/bin
cd $HOME
rm -rf weeman
rm -rf uninstallweeman
clear
echo 'Successfully Installed Weeman Please Subscribe My Channel HackZonE'
echo
echo
clear
figlet SQLMAP
echo "Instalar sqlmap"
echo
echo "Quer instalar Sqlmap  "
cd
read opcao
apt-get install python2 curl
clear
curl -L https://git.io/vpZZb --output sqlmap_1.2.4-1_termux.deb
clear
dpkg -i sqlmap_1.2.4-1_termux.deb
clear
echo
cd
rm sqlmap_1.2.4-1_termux.deb
echo
clear
echo "Personalizando Termux"
cd .. && cd usr && cd etc
rm bash.bashrc
wget https://raw.githubusercontent.com/luis470/bash-termux/master/bash.bashrc
clear
echo
cd
figlet HYDRA
echo
echo "deseja instala hydra [Y]"
read opcao
pkg install hydra
clear
echo "Instalado com susesso"
echo
#!/data/data/com.termux/files/usr/bin/bash
termux-setup-storage

apt update
clear
apt install -y git zsh
clear
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1
clear
mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

chsh -s zsh

echo "oh-my-zsh install complete!\nChoose your color scheme now~"
$HOME/.termux/colors.sh

echo "Choose your font now~"
$HOME/.termux/fonts.sh

echo "Please restart Termux app..."

exit
