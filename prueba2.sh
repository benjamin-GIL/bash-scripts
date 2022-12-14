#!/bin/sh
show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"` 
    number=`echo "\033[33m"`
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${menu}||||||||||||||||||||||||||||||||||||||uwu||${normal}\n"
    printf "${menu}--${number} 1)${menu} Ver Procesos. ${normal}\n"
    printf "${menu}--${number} 2)${menu} Ver RAM. ${normal}\n"
    printf "${menu}--${number} 3)${menu} Ver cantidad de usuarios. ${normal}\n"
    printf "${menu}--${number} 4)${menu} Ver usuarios loggeados. ${normal}\n"
    printf "${menu}--${number} 5)${menu} Some other commands${normal}\n"
    printf "${menu}||||||||||||||||||||||||||||||||||||||°w°||${normal}\n"
    printf "Please enter a menu option and enter or ${fgred}x to exit. ${normal}"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` 
    normal=`echo "\033[00;00m"` 
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            option_picked;
            top -n 1;
            show_menu;
        ;;
        2) clear;
            free -h;
            option_picked;
            show_menu;
        ;;
        3) clear;
            who | nl;
            option_picked;  
            show_menu;
        ;;
        4) clear;
            who -l;
            option_picked;
            show_menu;
        ;;
        x)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Pick an option from the menu";
            show_menu;
        ;;
      esac
    fi
done