cd /tmp
base=http://packages.linuxmint.com/pool/main/x/xapp-symbolic-icons/
deb=$(wget -qO- "$base" | grep -oE 'xapp-symbolic-icons_[0-9.]+_all\.deb' | sort -uV | tail -1)
echo "Descargando: $deb"
wget "$base$deb"
sudo apt install ./"$deb"
sudo gtk-update-icon-cache /usr/share/icons/hicolor

rm -rf /tmp/*
