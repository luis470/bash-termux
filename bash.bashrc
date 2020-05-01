if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi
clear
figlet PENTEST
PS1='\033[01;33mlocalhost\033[01;39m@\033[01;31mroot: \033[01;32m'
