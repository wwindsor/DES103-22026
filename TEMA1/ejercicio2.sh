#!/bin/bash

#crear un script que reciba un argumento
#y lo valide si es vacio, valide si es un archivo,
#y que despliegue su contenido.

if [[ -z "$1" ]]; then
    echo "Error: No se proporcionó ningún argumento."
    exit 1
fi

if [[ ! -f "$1" ]]; then
    echo "Error: El argumento proporcionado no es un archivo válido."
    exit 1
fi

cat "$1"
echo "$?"