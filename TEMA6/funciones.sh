#!/bin/bash

mostrar_mensaje() {
    printf "Mensaje desde una función compartida.\n"
}

validar_directorio() {
    local directorio="$1"

    [[ -d "$directorio" ]]
}