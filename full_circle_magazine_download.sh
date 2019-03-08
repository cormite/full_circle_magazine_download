#!/bin/bash

#==========================================================
# Author: Carlos Fernandez San Millan
#
# https://github.com/cormite/full_circle_magazine_download
#==========================================================

special_files="issuePY01_en.pdf issuePY02_en.pdf issuePY03_en.pdf issuePY04_en.pdf issuePY05_en.pdf issuePY06_en.pdf issuePY07_en.pdf issuePY08_en.pdf issuePY09_en.pdf issuePY10_en.pdf issuePY11_en.pdf issuePY12_en.pdf issueSC01_en.pdf issueSE01_en.pdf issueUD01_en.pdf issueUU01_en.pdf issueVM01_en.pdf issueLO01_en.pdf issueLO02_en.pdf issueLO03_en.pdf issueLO04_en.pdf issueLO05_en.pdf issueIS01_en.pdf issueIS02_en.pdf issueIS03_en.pdf issueIS04_en.pdf issueIS05_en.pdf issueIS06_en.pdf issueBL01_en.pdf issueFC01_en.pdf issueCC01_en.pdf issueCC02_en.pdf issueCC03_en.pdf"
first=1
last=142
ROOT_DIR=$(pwd)

download_issues () {
        for i in $(eval echo "{$first..$last}")
        do
                wget -c 'http://dl.fullcirclemagazine.org/issue'"$i"'_en.pdf'
        done
}

download_special_editions () {
        for j in $special_files
        do
                wget -c 'http://dl.fullcirclemagazine.org/'"$j"
        done
}


if [ -d "$ROOT_DIR"/Issues ]
then
        cd "$ROOT_DIR"/Issues || { echo "Error accessing Issues folder" ; exit; }
        download_issues
else
        mkdir "$ROOT_DIR"/Issues
        cd "$ROOT_DIR"/Issues || { echo "Error accessing Issues folder" ; exit; }
        download_issues
fi

if [ -d "$ROOT_DIR"/Special_Editions ]
then
        cd "$ROOT_DIR"/Special_Editions || { echo "Error accessing Special Editions folder" ; exit; }
        download_special_editions
else
        mkdir "$ROOT_DIR"/Special_Editions
        cd "$ROOT_DIR"/Special_Editions || { echo "Error accessing Issues folder" ; exit; }
        download_special_editions
fi

# LAST LINE -- DO NOT REMOVE
