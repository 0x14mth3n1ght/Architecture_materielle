TPs d'architecture matérielle , avec le logiciel diglog.

# Installation

Lire le HOWTO_install_diglog.txt (fichiers patchs déjà téléchargés ici)

# Dépendances:

-Pour Debian:

```
sudo apt update && sudo apt upgrade
sudo apt install libx11-dev i686 edition build-essential
```

-Pour Arch:
	
```
sudo pacman -Syu
sudo pacman -S xorg-fonts-misc xorg-mkfontscale
```

-Pour Windows (Wsl debian based):


```
sudo apt install libx11-dev
```

Installer https://sourceforge.net/projects/vcxsrv/ , puis:

```
echo "export DISPLAY=$(ip route list default | awk '{print $3}'):0" >> ~/.bashrc
echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc
```

Enfin, démarrer le serveur X, cocher disable access control.
(suivre les instructions https://stackoverflow.com/questions/61110603/how-to-set-up-working-x11-forwarding-on-wsl2)

# Utilisation

Lire diglog_usage.pdf
En pratique le binaire a été copié dans le répertoire de chaque tp l'utilisant : cd diglog/bin/tpx

# Lancement

Logiciel:
```
./diglog/bin/diglog &
```

TPs:
```
./diglog/bin/diglog tpx/tpx.lgf &
```

Sujets:
https://web4.ensiie.fr/~christophe.mouilleron/Teaching/ARMA/
