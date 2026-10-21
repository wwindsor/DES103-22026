#!/bin/bash​

TEMP="/tmp/proceso_temporal_$$.tmp"

limpiar() {
echo "Limpiando archivo temporal..."
rm -f "$TEMP"
}

trap limpiar EXIT

echo "Datos temporales" > "$TEMP"
echo "Procesando..."
sleep 5
echo "Finalizado"