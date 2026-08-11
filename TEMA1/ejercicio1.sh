#!/bin/bash

#un script que me revise si existen ejecutables en /tmp y me los muestre por pantalla
for archivo in /tmp/*; do
    echo "$archivo"
    if [[ -f "$archivo" && -x "$archivo" ]]; then
        echo "Ejecutable encontrado: $archivo"
    fi
done

