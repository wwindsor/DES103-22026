#!/bin/bash
es_root() {
if [[ "$(id -u)" -eq 0 ]]; then
    return 0
else
    return 1
fi
}
: '
Comentario: no se puede almacenar el valor
de retorno de una función en una variable,
ya que el valor de retorno es un código de salida
(0 para éxito, 1 para error)
y no un valor que se pueda asignar a una variable.
Sin embargo, se puede capturar el valor de retorno de
la función utilizando la variable especial $?
después de llamar a la función.
'
valor=$(es_root)
echo "El valor de retorno de la función es: $valor"

if es_root; then
    echo "El script se está ejecutando como root."
else
    echo "El script no se está ejecutando como root."
fi


obtener_fecha() {
return "$(date +%F)"
}

fecha_actual=$(obtener_fecha)
echo "Fecha: $fecha_actual"

contador=100

cambiar() {
local contador=1
echo "Dentro de la función: $contador"
}

cambiar
echo "Fuera de la función: $contador"