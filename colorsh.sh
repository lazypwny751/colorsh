#!/bin/bash

#    a simple color library written in bash
#    Copyright (C) 2021 lazypwny751
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Reset
reset='\033[0m'           # Text Reset

# Regular Colors
black='\033[0;30m'        # Black
red='\033[0;31m'          # Red
green='\033[0;32m'        # Green
yellow='\033[0;33m'       # Yellow
blue='\033[0;34m'         # Blue
purple='\033[0;35m'       # Purple
cyan='\033[0;36m'         # Cyan
white='\033[0;37m'        # White

# Bold
Bblack='\033[1;30m'       # Black
Bred='\033[1;31m'         # Red
Bgreen='\033[1;32m'       # Green
Byellow='\033[1;33m'      # Yellow
Bblue='\033[1;34m'        # Blue
Bpurple='\033[1;35m'      # Purple
Bcyan='\033[1;36m'        # Cyan
Bwhite='\033[1;37m'       # White

# Underline
Ublack='\033[4;30m'       # Black
Ured='\033[4;31m'         # Red
Ugreen='\033[4;32m'       # Green
Uyellow='\033[4;33m'      # Yellow
Ublue='\033[4;34m'        # Blue
Upurple='\033[4;35m'      # Purple
Ucyan='\033[4;36m'        # Cyan
Uwhite='\033[4;37m'       # White

# Background
BGblack='\033[40m'        # Black
BGred='\033[41m'          # Red
BGgreen='\033[42m'        # Green
BGyellow='\033[43m'       # Yellow
BGblue='\033[44m'         # Blue
BGpurple='\033[45m'       # Purple
BGcyan='\033[46m'         # Cyan
BGwhite='\033[47m'        # White

# High Intensity
Iblack='\033[0;90m'       # Black
Ired='\033[0;91m'         # Red
Igreen='\033[0;92m'       # Green
Iyellow='\033[0;93m'      # Yellow
Iblue='\033[0;94m'        # Blue
Ipurple='\033[0;95m'      # Purple
Icyan='\033[0;96m'        # Cyan
Iwhite='\033[0;97m'       # White

# Bold High Intensity
BIblack='\033[1;90m'      # Black
BIred='\033[1;91m'        # Red
BIgreen='\033[1;92m'      # Green
BIyellow='\033[1;93m'     # Yellow
BIblue='\033[1;94m'       # Blue
BIpurple='\033[1;95m'     # Purple
BIcyan='\033[1;96m'       # Cyan
BIwhite='\033[1;97m'      # White

# High Intensity backgrounds
BGIblack='\033[0;100m'   # Black
BGIred='\033[0;101m'     # Red
BGIgreen='\033[0;102m'   # Green
BGIyellow='\033[0;103m'  # Yellow
BGIblue='\033[0;104m'    # Blue
BGIpurple='\033[0;105m'  # Purple
BGIcyan='\033[0;106m'    # Cyan
BGIwhite='\033[0;107m'   # White

# lolbash is a function that offers random colors similar to lolcat 
# Usage: echo -e "$(randomcolor) hello${reset}"

randomcolor() {
    case ${1} in
        simple)
            echo -ne "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m"
        ;;
        cool)
            local bold=$(( $RANDOM % 2 ))
            local code=$(( 30 + $RANDOM % 8 ))
            printf "%d;%d\n" $bold $code
        ;;
    esac
}

# lolbash is a function that offers random colors similar to lolcat for every character(s)
# Usage: echo -e "$(lolbash) hello${reset}"

lolbash() {
	sentence="$*"
	for (( i=0; i<${#sentence}; i++ )); do
	    printf "\e[%sm%c" "$(random_colour)" "${sentence:i:1}"
	done
	echo -e '\e[0m'
}