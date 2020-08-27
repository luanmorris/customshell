#!/bin/bash

install() {
	local cat_bashrc="$(cat ~/.bashrc 2> /dev/null)"

	if [[ $cat_bashrc =~ "CUSTOM SHELL PARAMETERS" ]]; then 
		echo "Custom Shell has been installed."
	else
		cp ~/.bashrc ~/.bashrc_copy && cat parameters >> ~/.bashrc && echo "Instalation successful"
	fi
}

findbrc="$(ls ~/.bashrc 2> /dev/null)"

	if [[ $findbrc =~ "bashrc" ]]; then
		echo $(install)
	else
		echo "Your system does not have the “bashrc” file."
	fi
