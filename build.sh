#!/bin/bash

if [[ ! -d hacktv ]]; then
	git clone https://github.com/fsphil/hacktv.git
	cd hacktv/src
	# Patch source files with MAC bug fix
	patch < ../../hacktv_windows.patch
	while true; do
	    read -p "Download complete. Do you want to compile now? " yn
	    case $yn in
		[Yy]* ) ./build_win64.sh; break;;
		[Nn]* ) exit;;
		* ) echo "Please answer yes or no.";;
	    esac
	done
else
	while true; do
	    read -p "hacktv directory already exists, do you want to remove it? " yn
	    case $yn in
		[Yy]* ) rm -rf hacktv; break;;
		[Nn]* ) exit;;
		* ) echo "Please answer Y or N.";;
	    esac
	done
fi
