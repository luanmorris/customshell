#!/bin/bash

echo ''
echo "Do you want uninstall CUSTOMSHELL?"
echo ''
echo -e "“yes” or “no”"
read opt

if [[ $opt =~ "yes" ]]; then
	mv ~/.bashrc_copy ~/.bashrc
else
	echo "CUSTOMSHELL has not been uninstalled"
fi
