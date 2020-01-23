SRC = temps.sh

install :
	@echo "Installing script to bin"
	@sudo cp ${SRC} /usr/bin/temps

uninstall :
	@echo "Uninstall scirpt from bin"
	@sudo rm -f /usr/bin/temps
