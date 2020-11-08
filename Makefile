install:
	apt install uuid xfce4-terminal
	cp ./tpo.sh ./tpo
	chmod 755 ./tpo
	chown 0 ./tpo
	mv ./tpo /usr/local/bin/tpo
