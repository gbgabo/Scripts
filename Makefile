# tinytools - scripts to improve your productivity.
# See LICENSE file for copyright and license details.

.POSIX:

BIN_FOLDER=/usr/bin
CONFIG_FOLDER=/etc/personal-scripts


${BIN_FOLDER}:
	@echo "Creating ${BIN_FOLDER} folder ..."
	mkdir ${BIN_FOLDER}

bctrl: ${BIN_FOLDER} tset
	@echo "Installing bctrl..."
	install -m 555 bctrl ${BIN_FOLDER}
	@echo "done!"

vctrl: ${BIN_FOLDER} tset
	@echo "Installing vctrl..."
	install -m 555 vctrl ${BIN_FOLDER}
	@echo "done!"

passmenu: ${BIN_FOLDER}
	@echo "Installing passmenu..."
	install -m 555 passmenu ${BIN_FOLDER}
	@echo "done!"

tset: ${BIN_FOLDER}
	@echo "Installing tset..."
	install -m 555 tset ${BIN_FOLDER}
	@echo "done!"

tl: ${BIN_FOLDER}
	@echo "Installing tl..."
	install -m 555 tl ${BIN_FOLDER}
	@echo "done!"

uninstall:
	@echo "Removing scripts..."
	rm -f ${BIN_FOLDER}/passmenu
	rm -f ${BIN_FOLDER}/bctrl
	rm -f ${BIN_FOLDER}/vctrl
	rm -f ${BIN_FOLDER}/tset
	rm -f ${BIN_FOLDER}/tl
	@echo "done!"

install: passmenu bctrl vctrl tset tl
	@echo "scripts installed!"

.PHONY: install passmenu bctrl vctrl tset tl uninstall
