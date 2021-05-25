#/bin/bash

stop_srv () {
    sudo systemctl stop $1
    sudo systemctl disable $1
    sudo systemctl mask $1
}

stop_srv avahi-daemon
stop_srv brltty
stop_srv debug-shell
stop_srv ModemManager
stop_srv pppd-dns
stop_srv whoopsie
stop_srv cups
stop_srv cups-browsed
stop_srv NetworkManager-wait-online
stop_srv fwupd
stop_srv fwupd-refresh
stop_srv saned
stop_srv snapd
stop_srv openvpn
#NO ELIMINAR SI SE USAN DISCOS ENCRIPTADOS
stop_srv apparmor
#PARA ENTORNOS GNOME o BASADOS EN GNOME DEJAR ACCOUNTS DAEMON
stop_srv accounts-daemon

sudo apt purge snapd orca redshift magnus onboard simple-scan evolution deja-dup whoopsie cups xserver-xorg-video-intel -y

#SI QUIERES QUE SE VEAN TODAS LAS APLICACIONES EN LA LISTA DE INICIO, DESCOMENTAR
#LAS SIGUIENTES 2 LINEAS
#cd /etc/xdg/autostart/ && tar cvzf ~/autostart-backup.tar.gz *.desktop
#sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

