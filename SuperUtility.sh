#!/bin/bash
INPUT=/tmp/menu.sh.$$

OUTPUT=/tmp/output.sh.$$

vi_editor=${EDITOR-vi}

trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM

function display_output(){
	local h=${1-15}
	local w=${2-41}
	local t=${3-Output}
	dialog --backtitle "Super Utility" --title "${t}" --clear --msgbox "$(<$OUTPUT)" ${h} ${w}
}

function option1(){
	clear

}

function option2(){
	clear

}

function option3(){
	clear

}

function option4(){
	clear

}

function option5(){
	clear

}

function option6(){
	clear

}

function option7(){
	clear

}

function option8(){
	clear

}

function option9(){
	clear

}

function option10(){
	clear

}

while true
do

### display main menu ###
dialog --clear  --help-button --backtitle "Super Utility" \
--title "[ M A I N - M E N U ]" \
--menu "Choose your weapon:" 15 50 10 \
1 "SSH" \
2 "SSH" \
2 "SSH" \
4 "SSH" \
5 "SSH" \
6 "SSH" \
7 "SSH" \
8 "SCP TRANSFER" \
9 "SCP TRANSFER" \
10 "ARCHIVER AND VERSION CTRL" \
Exit "Exit to the shell" 2>"${INPUT}"

menuitem=$(<"${INPUT}")

case $menuitem in
	1) option1;;
	2) option2;;
	3) option3;;
	4) option4;;
	5) option5;;
  6) option6;;
	7) option7;;
	8) option8;;
	9) option9;;
	10) option10;;
	Exit) echo "Bye"; clear; break;;
esac

done
