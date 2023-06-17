#!/bin/bash

switch_config_gtk () {
	if [ "${1}" == "dark" ]
	then
		ENABLE=1
	else
		ENABLE=0
	fi

	grep 'dark-theme' "${HOME}"/.config/{gtk-3.0/settings.ini,gtk-4.0/settings.ini}
	sed -i \
		"s/dark-theme=[[:digit:]]/dark-theme=${ENABLE}/" \
		"${HOME}"/.config/{gtk-3.0/settings.ini,gtk-4.0/settings.ini}
	grep 'dark-theme' "${HOME}"/.config/{gtk-3.0/settings.ini,gtk-4.0/settings.ini}
}

usage () {
	printf "usage:
sh ./swtich-theme light
sh ./swtich-theme dark\n"
}

# $1 : dark or light
main () {
	if [ -z "${1}" ]
	then
		usage
		exit 1
	fi

	if [ "${1}" != "dark" ] && [ "${1}" != "light" ]
	then
		usage
		exit 1
	fi

	switch_config_gtk "${1}"
}

main "${1}"
