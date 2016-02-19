#!/bin/bash
BLUE="\033[0;36m"
RED="\033[0;31m"
NOCOLOUR="\033[0m"

read -p "Install albert themes? Answer Yes/No `echo $'\n> '`" yn

case $yn in
	[Yesyes]* )
        	# If the user selected yes, Lets copy the theme files over
		echo -e "${BLUE} sudo cp ./Arc/Arc.qss /usr/share/albert/themes/ ${NOCOLOUR}"
		sudo cp ./Arc/Arc.qss /usr/share/albert/themes/

		echo -e "${BLUE}sudo cp ./Flat-Dark/Flat-Dark.qss /usr/share/albert/themes/ ${NOCOLOUR}"
		sudo cp ./Flat-Dark/Flat-Dark.qss /usr/share/albert/themes/

		# Thank the user ~
		echo -e "${RED}Themes have been installed! Thank you! ${NOCOLOUR}";;
	[Nono]* )
		echo -e "${BLUE}You've chosen not to install the themes. ${NOCOLOUR}";;
	* ) echo "Please answer yes or no.";;
esac
