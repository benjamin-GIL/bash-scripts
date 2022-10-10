#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Benja Program"
TITLE="MENU"
MENU="Selecciona una de las opciones"

OPTIONS=(1 "Ver procesos"
         2 "Ver usuarios activos"
         3 "Ver cantidad de usuarios activos"
	 4 "esto no se que es xd")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            top
            ;;
        2)
            who -l

            ;;
        3)
            who | nl
	    ;;

	4)
	    free -h
            ;;
esac


