SRC = temps.sh

install :
	@echo "Installing script to bin"
	@cp ${SRC} /usr/bin/temps

uninstall :
	@echo "Uninstall scirpt from bin"
	@rm -f /usr/bin/temps
