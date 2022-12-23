TPs d'architecture matérielle , avec le logiciel diglog. Ci-joint un petit script d'installation et quelques notes.

# Dépendances:

-Pour Debian:

```
libx11-dev i686
```

-Pour Arch:
	
```
xorg-fonts-misc xorg-mkfontscale
```

-Pour Windows (Wsl debian based):


```
libx11-dev
```

Installer https://sourceforge.net/projects/vcxsrv/ , puis (dans le script d'installation):

```
echo "export DISPLAY=$(ip route list default | awk '{print $3}'):0" >> ~/.bashrc
echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc
```

Enfin, démarrer le serveur X, cocher disable access control.
(suivre les instructions https://stackoverflow.com/questions/61110603/how-to-set-up-working-x11-forwarding-on-wsl2)

# Installation

Ce script fonctionne sur Arch, Debian, Ubuntu et Wsl. À la fin de l'installation, l'éxécutable sera disponible dans diglog/bin.
Lancer:

```
chmod +x install.sh; ./install.sh
```

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
