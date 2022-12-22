INSTALL_DIR=/usr/local/bin
SYSTEMD_UNIT_DIR=/lib/systemd/system
CONFIG_DIR=/etc/nerdytemp

setup: requirements.txt
	pip3 install -r requirements.txt
	
clean:
	rm -rf __pycache__

install: setup
	install -m 755 nerdytemp $(INSTALL_DIR)
	install -m 644 config/nerdytemp.service $(SYSTEMD_UNIT_DIR)
	install -m 644 config/nerdytemp.ini  $(CONFIG_DIR)

uninstall:
	rm -rf $(INSTALL_DIR)/nerdytemp
	rm -rf $(SYSTEMD_UNIT_DIR)/nerdytemp.service
	rm -rf $(CONFIG_DIR)
