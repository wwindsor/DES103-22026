#!/bin/bash​
if read -r -t 3 -p "Ingrese una respuesta en 3 segundos: " respuesta; 
then
    printf "Respuesta recibida: %s\n" "$respuesta"
else
    printf "No se recibió una respuesta válida a tiempo.\n" >&2
fi