#!/bin/bash​

read -r -n 1 -p "¿Desea continuar? (s/n): " respuesta
printf "\n"

case "${respuesta,,}" in
s)
printf "Continuando con la operación.\n"
;;
n)
printf "Operación cancelada.\n"
;;
*)
printf "Respuesta no reconocida.\n" >&2
exit 2
;;
esac