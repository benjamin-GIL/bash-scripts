# submenu
submenu () {
  local PS3='Please enter sub option: '
  local options=("Sub menu item 1" "Sub menu item 2" "Sub menu item 3" "Sub menu item 4" "Sub menu quit ")
  local opt
  select opt in "${options[@]}"
  do
      case $opt in
          "Ver Procesos")
              top
              ;;
          "Ver usuarios activos")
              who -l
              ;;
	  "ver cantidad de usuarios activos ")
	      who -l
	      ;;
	  "ver uso de la ram")
	      free -h
	      ;;
          "Sub menu quit")
              return
              ;;
          *) echo "invalid option $REPLY";;
      esac
  done
}

# main menu
PS3='Ver procesos'
options=("Main menu item 1" "Submenu" "Main menu quit")
select opt in "${options[@]}"
do
    case $opt in
        "aca veras los procesos")
            top
            ;;
        "Submenu")
            submenu
            ;;
        "Main menu quit")
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
