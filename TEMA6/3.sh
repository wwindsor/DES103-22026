#!/bin/bash​

read -r -s -p "Ingrese una clave de demostración: " clave
printf "\n"

printf "Se capturaron %d caracteres.\n" "${#clave}"

unset clave