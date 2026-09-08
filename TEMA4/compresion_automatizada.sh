#!/bin/bash​
ORIGEN="/home/walvarez/Documentos"
DESTINO="/home/walvarez/respaldos"
FECHA="$(date +%F_%H-%M-%S)"
ARCHIVO="respaldo_$FECHA.tar.gz"

mkdir -p "$DESTINO"
if [[ ! -d "$ORIGEN" ]]; then
echo "[ERROR] El directorio origen no existe: $ORIGEN" >&2
exit 1
fi

tar -czf "$DESTINO/$ARCHIVO" "$ORIGEN"

if [[ $? -eq 0 ]]; then
echo "[OK] Respaldo generado: $DESTINO/$ARCHIVO"
else
echo "[ERROR] Falló la generación del respaldo" >&2
exit 2
fi