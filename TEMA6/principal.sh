#!/bin/bash

source ./funciones.sh

mostrar_mensaje

if validar_directorio "/tmpa"; then
    printf "El directorio existe.\n"
else
    printf "El directorio no existe.\n" >&2
fi