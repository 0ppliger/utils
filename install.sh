if [[ $USER != "root" ]]; then
	echo "error: this script must be run as root"
	exit 1
fi

# 1. Copier le fichier "mksite" dans /usr/bin
cp ./mksite /usr/bin
# 2. Régler les permissions de "mksite" (rxwr-xr-x root root)
chown root:root /usr/bin/mksite
chmod 755 /usr/bin/mksite
# 3. Copier mksite.d dans /usr/share
cp -r ./mksite.d /usr/share
# 4. Régler les permissions de "mksite.d" (rxwr-xr-x root root)
chown -R root:root /usr/share/mksite.d
chmod 755 /usr/share/mksite.d
chmod 644 /usr/share/mksite.d/*
