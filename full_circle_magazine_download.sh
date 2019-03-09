#!/usr/bin/env bash

#==========================================================
# Author: Carlos Fernandez San Millan
#
# https://github.com/cormite/full_circle_magazine_download
#==========================================================

ROOT_DIR="$HOME/Downloads/FULL_CIRCLE_MAGAZINE"
ISSUES_DIR="$ROOT_DIR/Issues"
SPECIAL_ISSUES_DIR="$ROOT_DIR/Special_Issues"
INKSCAPE_DIR="$SPECIAL_ISSUES_DIR/Inkscape_Issues"
FREECAD_DIR="$SPECIAL_ISSUES_DIR/FreeCAD_Issues"
COMMAND_AND_CONQUER_DIR="$SPECIAL_ISSUES_DIR/Command_and_Conquer_Issues"
PYTHON_DIR="$SPECIAL_ISSUES_DIR/Python_Issues"
LIBREOFFICE_DIR="$SPECIAL_ISSUES_DIR/LibreOffice_Issues"
UBUNTU_DEV_DIR="$SPECIAL_ISSUES_DIR/Ubuntu_development_Issues"
VIRT_DIR="$SPECIAL_ISSUES_DIR/Virtualization_Series_Issues"
SCRIBUS_DIR="$SPECIAL_ISSUES_DIR/Scribus_Issues"
PERFECT_SERVER_DIR="$SPECIAL_ISSUES_DIR/Build_the_perfect_server_Issues"
UBUNTU_AND_UNITY_DIR="$SPECIAL_ISSUES_DIR/Ubuntu_and_Unity_Issues"
BLENDER_DIR="$SPECIAL_ISSUES_DIR/Blender_Issues"

download_issues () {
	first=1
	last=142
	if [ ! -d "$ISSUES_DIR" ]; then
		mkdir -p "$ISSUES_DIR" || { echo "$ISSUES_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$ISSUES_DIR" || { echo "Error accessing $ISSUES_DIR" ; exit; }
	for i in $(eval echo "{$first..$last}")
	do
		wget -c 'http://dl.fullcirclemagazine.org/issue'"$i"'_en.pdf'
	done
}

download_inkscape_special_editions () {
	first=01
	last=06
	if [ ! -d "$INKSCAPE_DIR" ]; then
		mkdir -p "$INKSCAPE_DIR" || { echo "$INKSCAPE_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$INKSCAPE_DIR" || { echo "Error accessing $INKSCAPE_DIR" ; exit; }
	for i in $(seq -w $first $last)
	do
		wget -c 'http://dl.fullcirclemagazine.org/issueIS'"$i"'_en.pdf'
	done
}

download_freeCAD_special_editions () {
	if [ ! -d "$FREECAD_DIR" ]; then
		mkdir -p "$FREECAD_DIR" || { echo "$FREECAD_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$FREECAD_DIR" || { echo "Error accessing $FREECAD_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueFC'"01"'_en.pdf'
}

download_command_and_conquer_special_editions () {
	first=01
	last=03
	if [ ! -d "$COMMAND_AND_CONQUER_DIR" ]; then
		mkdir -p "$COMMAND_AND_CONQUER_DIR" || { echo "$COMMAND_AND_CONQUER_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$COMMAND_AND_CONQUER_DIR" || { echo "Error accessing $COMMAND_AND_CONQUER_DIR" ; exit; }
	for i in $(seq -w $first $last)
	do
		wget -c 'http://dl.fullcirclemagazine.org/issueCC'"$i"'_en.pdf'
	done
}

download_python_special_editions () {
	first=1
	last=12
	if [ ! -d "$PYTHON_DIR" ]; then
		mkdir -p "$PYTHON_DIR" || { echo "$PYTHON_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$PYTHON_DIR" || { echo "Error accessing $PYTHON_DIR" ; exit; }
	for i in $(seq -w $first $last)
	do
		wget -c 'http://dl.fullcirclemagazine.org/issuePY'"$i"'_en.pdf'
	done
}

download_libreoffice_special_editions () {
	first=01
	last=05
	if [ ! -d "$LIBREOFFICE_DIR" ]; then
		mkdir -p "$LIBREOFFICE_DIR" || { echo "$LIBREOFFICE_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$LIBREOFFICE_DIR" || { echo "Error accessing $LIBREOFFICE_DIR" ; exit; }
	for i in $(seq -w $first $last)
	do
		wget -c 'http://dl.fullcirclemagazine.org/issueLO'"$i"'_en.pdf'
	done
}

download_ubuntu_development_special_edition () {
	if [ ! -d "$UBUNTU_DEV_DIR" ]; then
		mkdir -p "$UBUNTU_DEV_DIR" || { echo "$UBUNTU_DEV_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$UBUNTU_DEV_DIR" || { echo "Error accessing $UBUNTU_DEV_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueUD'"01"'_en.pdf'
}

download_virtualization_special_editions () {
	if [ ! -d "$VIRT_DIR" ]; then
		mkdir -p "$VIRT_DIR" || { echo "$VIRT_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$VIRT_DIR" || { echo "Error accessing $VIRT_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueVM'"01"'_en.pdf' 
}

download_scribus_special_editions () {
	if [ ! -d "$SCRIBUS_DIR" ]; then
		mkdir -p "$SCRIBUS_DIR" || { echo "$SCRIBUS_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$SCRIBUS_DIR" || { echo "Error accessing $SCRIBUS_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueSC'"01"'_en.pdf' 
}

download_the_perfect_server_special_editions () {
	if [ ! -d "$PERFECT_SERVER_DIR" ]; then
		mkdir -p "$PERFECT_SERVER_DIR" || { echo "$PERFECT_SERVER_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$PERFECT_SERVER_DIR" || { echo "Error accessing $PERFECT_SERVER_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueSE'"01"'_en.pdf' 
}

download_ubuntu_and_unity_special_editions () {
	if [ ! -d "$UBUNTU_AND_UNITY_DIR" ]; then
		mkdir -p "$UBUNTU_AND_UNITY_DIR" || { echo "$UBUNTU_AND_UNITY_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$UBUNTU_AND_UNITY_DIR" || { echo "Error accessing $UBUNTU_AND_UNITY_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueUU'"01"'_en.pdf'
}

download_blender_special_issues () {
	if [ ! -d "$BLENDER_DIR" ]; then
		mkdir -p "$BLENDER_DIR" || { echo "$BLENDER_DIR couldn\'t be created, exiting."; exit; }
	fi
	cd "$BLENDER_DIR" || { echo "Error accessing $BLENDER_DIR" ; exit; }
	wget -c 'http://dl.fullcirclemagazine.org/issueBL'"01"'_en.pdf'
}

download_issues && \
	download_inkscape_special_editions && \
	download_freeCAD_special_editions && \
	download_command_and_conquer_special_editions && \
	download_python_special_editions && \
	download_libreoffice_special_editions && \
	download_ubuntu_development_special_edition && \
	download_virtualization_special_editions && \
	download_scribus_special_editions && \
	download_the_perfect_server_special_editions && \
	download_ubuntu_and_unity_special_editions && \
	download_blender_special_issues

# LAST LINE -- DO NOT REMOVE
