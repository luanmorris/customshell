#!/bin/bash

RED="\e[0;91m"
GREEN="\e[0;92m"
YELLOW="\e[0;93m"
BLUE="\e[0;94m"
OCHRE="\e[38;5;95m"
CYAN="\e[0;96m"
WHITE="\e[0;97m"
RESET="\e[0m"

echo ''
echo "Choose your color"
echo ''

echo -e "1 - ${RED}COLOR RED${RESET}"
echo -e "2 - ${GREEN}COLOR GREEN${RESET}"
echo -e "3 - ${YELLOW}COLOR YELLOW${RESET}"
echo -e "4 - ${BLUE}COLOR BLUE${RESET}"
echo -e "5 - ${OCHRE}COLOR OCHRE${RESET}"
echo -e "6 - ${CYAN}COLOR CYAN${RESET}"
echo -e "7 - ${WHITE}COLOR WHITE${RESET}"

echo ''
echo "Enter the color number..."
read num
echo ''

if [[ $num == 1 ]]; then
	choise='$COLOR_RED'
elif [[ $num == 2 ]]; then
	choise='$COLOR_GREEN'
elif [[ $num == 3 ]]; then
	choise='$COLOR_YELLOW'
elif [[ $num == 4 ]]; then
	choise='$COLOR_BLUE'
elif [[ $num == 5 ]]; then
	choise='$COLOR_OCHRE'
elif [[ $num == 6 ]]; then
	choise='$COLOR_CYAN'
elif [[ $num == 7 ]]; then
	choise='$COLOR_WHITE'
else
	echo "FAIL"
fi

install() {
    local cat_bashrc="$(cat ~/.bashrc 2> /dev/null)"

    if [[ $cat_bashrc =~ "CUSTOM SHELL PARAMETERS" ]]; then
        echo "Custom Shell has been installed."
    else
        cp ~/.bashrc ~/.bashrc_copy && cat parameters >> ~/.bashrc
        echo -e "PS1=\"[\[$choise\]\u\[\$COLOR_RESET\]@\h \[$choise\]\W\[\$COLOR_RESET\]\[\$COLOR_RED\]\\\$(exit_code)\[\$COLOR_RESET\]\[\\\$(git_color)\]\\\$(git_branch)\[\$COLOR_RESET\]]\$ \"" >> ~/.bashrc
        echo "Instalation successful"
    fi
}

findbrc="$(ls ~/.bashrc 2> /dev/null)"

    if [[ $findbrc =~ "bashrc" ]]; then
        echo $(install)
    else
        echo "Your system does not have the “bashrc” file."
    fi
