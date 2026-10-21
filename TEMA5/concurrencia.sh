#!/bin/bash​

echo "Iniciando tareas..."

sleep 5 &
pid1=$!

sleep 3 &
pid2=$!

wait "$pid1"
wait "$pid2"

echo "Todas las tareas finalizaron"