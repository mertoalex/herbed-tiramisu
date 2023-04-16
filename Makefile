.PHONY: install uninstall

PREFIX?=/usr/local
asroot?=sudo

export PREFIX asroot

install:
	@${asroot} bash -c '\
	cp -v herbed-tiramisu.sh ${PREFIX}/bin;\
	chown -v root:root ${PREFIX}/bin/herbed-tiramisu.sh'

uninstall:
	@${asroot} rm -vf ${PREFIX}/bin/herbed-tiramisu.sh
