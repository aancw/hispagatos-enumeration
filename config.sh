#!/usr/bin/env bash

set -eo pipefail
ulimit -n 4090

############## Variables #############
WORKINGDIR=~/hacking
TARGET="$@"
NMAPP="/usr/bin/nmap"
ENUM4LINUX="/usr/bin/enum4linux"
NIKTO="/usr/bin/nikto"
TARGETDIR="${WORKINGDIR}/${TARGET}"
TARGETNOTES="${TARGETDIR}/${TARGET}-NOTES"
FILES="${WORKINGDIR}/${TARGET}/files"
DOCS="${WORKINGDIR}/${TARGET}/docs"
DELETE="true"
DISABLE_DIRBUSTER="false"
#####################################
