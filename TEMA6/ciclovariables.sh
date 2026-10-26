#!/bin/bash​

while true; do
read -r -p "Ingrese su nombre: " nombre

if [[ -n "$nombre" ]]; then break
fi

printf "Error: el nombre no puede estar vacío.\n" >&2
done

printf "Nombre registrado: %s\n" "$nombre"