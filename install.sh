# Utiliser la commande "uname" pour récupérer la version du noyau
kernel_version=$(uname -r)

# Mac
if [[ "$kernel_version" == *"darwin"* ]]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
        brew install lsb_release
        brew install libx11
	echo "souci architecture"
fi

# Wsl (Ubuntu, Debian)
if [[ "$kernel_version" == *"microsoft"* ]]; then
	sudo apt update && sudo apt upgrade
	sudo apt install libx11-dev
	echo "export DISPLAY=$(ip route list default | awk '{print $3}'):0" >> ~/.bashrc
	echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc
	source ~/.bashrc
fi

distribution=$(lsb_release -d)

# Arch
if [[ "$distribution" == *"Arch"* ]]; then
	sudo pacman -Syu
	sudo pacman -S xorg-fonts-misc xorg-mkfontscale
fi

# Debian
if [[ "$distribution" == *"Debian"* ]] || [[ "$distribution" == *"Ubuntu"* ]]; then
	sudo apt update && sudo apt upgrade
        sudo apt install libx11-dev
fi

# Installation

mkdir diglog
cd diglog
tar xf ../psys*.tar.gz
tar xf ../log*.tar.gz

patch -p1 < ../diglog.patch
#patch -p1 < ../perfs.patch 
#patch -p1 < ../additional.patch 

cd psys/src
make

cd ../..
mkdir bin

cd log/src

make

cd ../..
echo "Installation terminée, lancer ./diglog/bin/diglog"
