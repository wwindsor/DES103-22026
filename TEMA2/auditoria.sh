#!/bin/bash

validar_log() {
    local archivo="$1"
    if [[ -f "$archivo" && -r "$archivo" ]]; then
        return 0
    fi
    return 1
}

contar_exitos() {
    local archivo="$1"
    grep -c "LOGIN OK" "$archivo"
}

contar_fallos() {
    local archivo="$1"
    grep -c "LOGIN FAILED" "$archivo"
}

generar_estado(){
    local fallos="$1"
    if [[ "$fallos" -ge 3 ]]; then
        echo "Alerta"
    else
        echo "Normal"
    fi
}

usuario_mas_fallido(){
    local archivo="$1"
    grep "LOGIN FAILED" "$archivo" |
    sed 's/.*usuario=//' |
    sort |
    uniq -c |
    sort -nr |
    head -1 |
    awk '{print $2}'
}

#Aca empieza el programa principal#

if [[ $# -ne 1 ]]; then
    echo "Error: debe proporcionar un archivo de log"
    echo "Uso: $0 archivo_log"
    exit 1
fi

archivo="$1"

if ! validar_log "$archivo"; then
    echo "[ERROR] el archivo '$archivo' no existe o no es legible."
    exit 2
fi

exitos=$(contar_exitos "$archivo")
fallos=$(contar_fallos "$archivo")
estado=$(generar_estado "$fallos")
usuario_fallido=$(usuario_mas_fallido "$archivo")

echo "===========Auditoria=============="
echo "Archivo analizado: $archivo"
echo "Accesos exitosos: $exitos"
echo "Accesos fallidos: $fallos"
echo "Estado: $estado"
echo "Usuario mas fallido: $usuario_fallido"