#!/bin/bash​

trap 'echo "Interrupción detectada"; exit 1' SIGINT

while true; do
echo "Trabajando..."
sleep 2
done