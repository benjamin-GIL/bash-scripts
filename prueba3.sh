#!/bin/bash

clear

submanual(){
while :
do
echo "sub Menu:"
echo -e "\t(1) Options 1"
echo -e "\t(2) Options 1"
echo -e "\t(3) Options 2"
echo -e "\t(4) Options 2"
echo -e "\t(B) Back"
echo -n "Porfavor selecciona tu opcion:"
read c
case $c in
    "1"|"1")
    top -n 1
    ;;
    "2"|"2")
    free -h
    ;;
    "3"|"3")
    who -l
    ;;
    "4"|"4")
    who | nl
    ;;
    "b"|"B")
    break
    ;;
        *)
        echo "invalid answer, please try again"
        ;;
esac
done
}

while :
do
echo "Main Menu:"
echo -e "\t(a) Entrar a ver los procesos."
echo -e "\t(b) Exit"
echo -n "Please enter your choice:"
read choice
case $choice in
    "a"|"A")
    submanual
    ;;
    "b"|"B")
    exit
    ;;
        *)
        echo "invalid answer, please try again"
        ;;

esac
done