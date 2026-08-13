#!/bin/bash

comparar_valores() {
if [[ "$1" == "$2" ]]; then
    echo "Son iguales"
else
    echo "Son diferentes"
fi
}

comparar_valores "root" "root"