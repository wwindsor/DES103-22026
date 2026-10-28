#!/bin/bash

read -r -p "Ingrese una fecha (AAAA-MM-DD): " fecha

if [[ ! "$fecha" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    printf "Error: use el formato AAAA-MM-DD.\n" >&2
    exit 2
fi

fecha_normalizada=$(date -d "$fecha" +%F 2>/dev/null) || {
    printf "Error: la fecha no es válida.\n" >&2
    exit 3
}

if [[ "$fecha_normalizada" != "$fecha" ]]; then
    printf "Error: la fecha no es válida.\n" >&2
    exit 3
fi

printf "Fecha validada: %s\n" "$fecha"
