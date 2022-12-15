#!/bin/env bash

function menu {
	options="firefox-shopping\nfirefox-school\nqutebrowser\nchromium"
	selected=$(echo -e $options | dmenu -m 1 -g 2 -l 2 -p "Exclude:")
	if [[ $selected = "firefox-shopping" ]]; then
		mullvad-exclude firefox -P Shopping
	elif [[ $selected = "firefox-school" ]]; then
		mullvad-exclude firefox -P School
	elif [[ $selected = "qutebrowser" ]]; then
		mullvad-exclude qutebrowser
	elif [[ $selected = "chromium" ]]; then
		mullvad-exclude chromium
	fi
}
menu
