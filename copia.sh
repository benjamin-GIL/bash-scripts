#! /bin/bash

#abrir la calculadora 
mate-calc&

#crea una variable y agarra el id de el ultimo proceso

PROCESO_APAGAR=$(echo $!)
echo $PROCESO_APAGAR

#espera 5 segunodos y cierra la variable 
read -p"en 5 segundos se cerrara" -t 5
kill $PROCESO_APAGAR



