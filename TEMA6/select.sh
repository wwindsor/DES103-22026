#!/bin/bash

opciones=(
    "Mostrar usuario"
    "Mostrar directorio actual"
    "Mostrar directorio personal"
    "Salir"
)

PS3="Seleccione una opción: "

select opcion in "${opciones[@]}"; do
    case "$REPLY" in
        1)
            printf "Usuario: %s\n" "${USER:-no definido}"
            ;;
        2)
            printf "Directorio actual: %s\n" "$PWD"
            ;;
        3)
            printf "Directorio personal: %s\n" "${HOME:-no definido}"
            ;;
        4)
            printf "Fin del programa.\n"
            break
            ;;
        *)
            printf "Opción inválida.\n" >&2
            ;;
    esac
done